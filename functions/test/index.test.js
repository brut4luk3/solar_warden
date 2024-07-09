const functions = require("firebase-functions-test")();
const admin = require("firebase-admin");
const moment = require("moment");

jest.mock("firebase-admin", () => ({
  initializeApp: jest.fn(),
  messaging: () => ({
    sendToTopic: jest.fn()
  })
}));

jest.mock("axios");

const sendNotification = require("../index").sendNotification;

describe("sendNotification", () => {
  beforeAll(() => {
    process.env.NASA_API_URL = "https://api.nasa.gov/DONKI/FLR";
    process.env.NASA_API_KEY = "dummyApiKey";
  });

  beforeEach(() => {
    admin.messaging().sendToTopic.mockClear();
  });

  it("should send a notification for the most recent flare today or yesterday", async () => {
    const currentTime = moment().utc();
    const flares = [
      {
        flrID: "flare-1",
        classType: "M1.2",
        endTime: currentTime.subtract(1, 'days').format('YYYY-MM-DDTHH:mm:ssZ')
      },
      {
        flrID: "flare-2",
        classType: "X2.1",
        endTime: currentTime.subtract(30, 'minutes').format('YYYY-MM-DDTHH:mm:ssZ')
      }
    ];

    const axios = require("axios");
    axios.get.mockResolvedValue({ data: flares });

    const sendToTopic = admin.messaging().sendToTopic;

    const wrapped = functions.wrap(sendNotification);
    await wrapped({});

    expect(sendToTopic).toHaveBeenCalledWith("all", {
      notification: {
        title: "🚨ATENÇÃO🚨",
        body: `Houve um Flare Solar tipo X2.1 em ${currentTime.subtract(30, 'minutes').format('DD/MM/YYYY HH:mm')}!`
      }
    });
  });

  it("should not send a notification when no flares are found", async () => {
    const axios = require("axios");
    axios.get.mockResolvedValue({ data: [] });

    const sendToTopic = admin.messaging().sendToTopic;

    const wrapped = functions.wrap(sendNotification);
    await wrapped({});

    expect(sendToTopic).not.toHaveBeenCalled();
  });
});