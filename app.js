const express = require('express');
const readFile = require('fs').readFile;

const app = express();

app.get('/', (req, res) => {
    readFile('./login.html', 'utf-8', (err, data) => {
        if (err) {
            res.send(err);
        } else {
            res.send(data);
        }
    });
});

app.listen(process.env.PORT || 3000, () => {
    console.log('Server running');
});