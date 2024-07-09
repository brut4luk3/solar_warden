const functions = require("firebase-functions");
const admin = require("firebase-admin");
const axios = require("axios");
const moment = require("moment");

admin.initializeApp();

const NASA_API_URL = process.env.NASA_API_URL || functions.config().nasa.api_url;
const NASA_API_KEY = process.env.NASA_API_KEY || functions.config().nasa.api_key;

exports.sendNotification = functions.pubsub.schedule("every 2 hours").onRun(async (context) => {
  const currentDate = moment().format('YYYY-MM-DD');
  const previousDate = moment().subtract(1, 'days').format('YYYY-MM-DD');

  try {
    const response = await axios.get(`${NASA_API_URL}?startDate=${previousDate}&endDate=${currentDate}&api_key=${NASA_API_KEY}`, {
      headers: {
        accept: 'application/json'
      }
    });

    const flares = response.data || [];
    let notificationTitle = "";
    let notificationBody = "";

    const recentFlare = flares.reduce((latest, flare) => {
      const flareTime = moment(flare.endTime, 'YYYY-MM-DDTHH:mm:ssZ').utc();
      return flareTime.isAfter(latest.endTime) ? flare : latest;
    }, { endTime: moment(0) });

    if (recentFlare.endTime !== moment(0).format('YYYY-MM-DDTHH:mm:ssZ')) {
      notificationTitle = "🚨ATENÇÃO🚨";
      notificationBody = `Houve um Flare Solar tipo ${recentFlare.classType} em ${moment(recentFlare.endTime).format('DD/MM/YYYY HH:mm')}!`;
    } else {
      notificationTitle = "🌥️ Nenhum Flare Solar";
      notificationBody = "Nenhum Flare Solar ocorrendo atualmente, tudo certo!";
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