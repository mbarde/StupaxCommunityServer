var express = require('express');
var bodyParser = require('body-parser')

var app = express();
app.use( bodyParser.json() );

// Add headers
app.use(function (req, res, next) {

	// Website you wish to allow to connect
	res.setHeader('Access-Control-Allow-Origin', '*');

	// Request methods you wish to allow
	res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

	// Request headers you wish to allow
	res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

	// Set to true if you need the website to include cookies in the requests sent
	// to the API (e.g. in case you use sessions)
	res.setHeader('Access-Control-Allow-Credentials', true);

	// Pass to next layer of middleware
	next();
});

var routes = {
	levels: require('./route/levels.js')
}

/* Configs */
app.post('/levels/create', routes.levels.create);
app.get('/levels/read/:id', routes.levels.read);
app.get('/levels/read', 	routes.levels.readAll);

app.listen(3000);
