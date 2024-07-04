const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.sendNotification = functions.pubsub.schedule("every 1 minutes").onRun((context) => {
  const payload = {
    notification: {
      title: "Título da Notificação",
      body: "Corpo da Notificação",
    },
  };

  return admin.messaging().sendToTopic("all", payload)
    .then((response) => {
      console.log("Notificação enviada com sucesso:", response);
      return null;
    })
    .catch((error) => {
      console.log("Erro ao enviar notificação:", error);
    });
});