const express = require('express');
const app = express();

const version = process.env.APP_VERSION || "dev";

app.get('/', (req, res) => {
  res.send(`CI success!Hello from ECS! Version: ${version}`);
});

app.get('/health', (req, res) => {
  res.status(200).send("OK");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});