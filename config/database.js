module.exports = ({ env }) => ({
  defaultConnection: "default",
  connections: {
    default: {
      connector: "mongoose",
      settings: {
        client: "mongo",
        uri: process.env.MONGODB_URI,
      },
      options: {
        useNullAsDefault: true,
        ssl: true,
      },
    },
  },
});
