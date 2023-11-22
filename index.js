const express = require('express');
const app = express();
const port = 3000;

// Statik dosyaları (HTML, CSS) serve etmek için
app.use(express.static('public'));

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

app.listen(port, () => {
  console.log(`Uygulama http://localhost:${port} adresinde çalışıyor`);
});