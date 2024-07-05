const functions = require("firebase-functions-test")();
const admin = require("firebase-admin");
const moment = require("moment");

jest.mock("firebase-admin", () => ({
  initializeApp: jest.fn(),
  messaging: () => ({
    sendToTopic: jest.fn()
  })
}));

// Mock the axios module
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

  it("should send a notification for a flare occurring now", async () => {
    const currentTime = moment().utc();
    const flares = [
      {
        flrID: "flare-now",
        classType: "M1.2",
        beginTime: currentTime.subtract(1, 'minutes').format('YYYY-MM-DDTHH:mm:ssZ'),
        endTime: currentTime.add(2, 'minutes').format('YYYY-MM-DDTHH:mm:ssZ')
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
        body: "Flare Solar tipo M1.2 ocorrendo agora!"
      }
    });
  });

  it("should send a notification for a flare that ended recently", async () => {
    const currentTime = moment().utc();
    const flares = [
      {
        flrID: "recent-flare",
        classType: "M1.2",
        beginTime: currentTime.subtract(2, 'hours').format('YYYY-MM-DDTHH:mm:ssZ'),
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
        title: "❗ATENÇÃO❗",
        body: "Houve um Flare Solar tipo M1.2 agora pouco!"
      }
    });
  });

  it("should send a notification when no flares are occurring", async () => {
    const axios = require("axios");
    axios.get.mockResolvedValue({ data: [] });

    const sendToTopic = admin.messaging().sendToTopic;

    const wrapped = functions.wrap(sendNotification);
    await wrapped({});

    expect(sendToTopic).toHaveBeenCalledWith("all", {
      notification: {
        title: "🌥️ Nenhum Flare Solar",
        body: "Nenhum Flare Solar ocorrendo atualmente, tudo certo!"
      }
    });
  });
});