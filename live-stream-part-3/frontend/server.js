const express = require('express')
const app = express()
const port = 3000
app.use(express.static(__dirname + '/public'));

app.get('/', (req, res) => {
  res.send('Hello World!')
})


app.get('/1', (req, res) => {
  res.sendFile(`${__dirname}/first.html`)
})

app.get('/2', (req, res) => {
  res.sendFile(`${__dirname}/second.html`)
})


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})