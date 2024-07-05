const functions = require("firebase-functions");
const admin = require("firebase-admin");
const axios = require("axios");
const moment = require("moment");

admin.initializeApp();

const NASA_API_URL = process.env.NASA_API_URL || functions.config().nasa.api_url;
const NASA_API_KEY = process.env.NASA_API_KEY || functions.config().nasa.api_key;

exports.sendNotification = functions.pubsub.schedule("every 1 hours").onRun(async (context) => {
  const currentDate = moment().format('YYYY-MM-DD');
  const currentTime = moment().format('HH:mm');
  const startDate = currentDate;
  const endDate = currentDate;

  try {
    const response = await axios.get(`${NASA_API_URL}?startDate=${startDate}&endDate=${endDate}&api_key=${NASA_API_KEY}`, {
      headers: {
        accept: 'application/json'
      }
    });

    const flares = response.data || [];
    let notificationTitle = "";
    let notificationBody = "";

    const currentTimeMoment = moment(currentTime, 'HH:mm');

    const flareNow = flares.find(flare => {
      const beginTime = moment(flare.beginTime, 'YYYY-MM-DDTHH:mm:ssZ').utc();
      const endTime = moment(flare.endTime, 'YYYY-MM-DDTHH:mm:ssZ').utc();
      return currentTimeMoment.isBetween(beginTime, endTime);
    });

    if (flareNow) {
      notificationTitle = "🚨ATENÇÃO🚨";
      notificationBody = `Flare Solar tipo ${flareNow.classType} ocorrendo agora!`;
    } else {
      const recentFlare = flares.find(flare => {
        const endTime = moment(flare.endTime, 'YYYY-MM-DDTHH:mm:ssZ').utc();
        return endTime.isSame(currentTimeMoment.subtract(1, 'hours'), 'day');
      });

      if (recentFlare) {
        notificationTitle = "❗ATENÇÃO❗";
        notificationBody = `Houve um Flare Solar tipo ${recentFlare.classType} agora pouco!`;
      } else {
        notificationTitle = "🌥️ Nenhum Flare Solar";
        notificationBody = "Nenhum Flare Solar ocorrendo atualmente, tudo certo!";
      }
    }

    const payload = {
      notification: {
        title: notificationTitle,
        body: notificationBody,
      },
    };

    await admin.messaging().sendToTopic("all", payload);
    console.log("Notificação enviada com sucesso");

  } catch (error) {
    console.error("Erro ao enviar notificação:", error);
  }
});