const express = require('express')
const bodyParser = require('body-parser')

const app = express()

app.use(bodyParser.json())

app.get('/', (req, res) => {
    res.send({ "status": "ready" });
});

app.get('/time', (req, res) => {
  const serverTime = new Date().toLocaleString();
  res.send({ "time": serverTime });
});

app.listen(3000, () => console.log('listening'))
