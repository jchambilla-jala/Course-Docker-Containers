const express = require('express');
const os = require('os');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  const hostname = os.hostname();
  const currentTime = new Date();
  const timezone = Intl.DateTimeFormat().resolvedOptions().timeZone;
  const ipAddress = req.header('x-forwarded-for') || req.socket.remoteAddress.split(':').slice(-1);
  res.send(`Hello '${hostname}' at ${currentTime.toLocaleString()} - ${timezone} - ${ipAddress}`);
});

app.listen(port, () => console.log(`Hello world app listening on port ${port}`));
