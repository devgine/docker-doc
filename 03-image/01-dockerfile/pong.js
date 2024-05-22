var express = require('express');
var app = express();

app.get('/ping', function(req, res) {
    console.log('/ping request received');
    res.setHeader('Content-Type', 'text/plain');
    res.end("pong");
});

app.listen(80, function () {
    console.log('Listening on port 80');
});
