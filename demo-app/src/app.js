const express = require('express')
const app = express()

console.log('### Change me to observe reload on code changes. :) ###')

app.get('/', function (req, res) {
  res.send('Hello World!')
})

app.get('/skaffold', function (req, res) {
  res.send('Skaffold is cool!')
})

app.get('/k3d', function (req, res) {
  res.send('k3d makes this environment spin!')
})

app.listen(3000)
