var http = require("http");
var server = http.createServer(function (req, res) {
res.writeHead(200);
res.end("Hello world from Joe's web server as initialized by ansible and CircleCI!");
});
server.listen(3000);