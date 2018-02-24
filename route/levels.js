var db = require('../config/mysql.js');

exports.create = function(req, res) {
	var level = req.body.level || '';
	var fields = ['title', 'author', 'timestamp', 'content'];
	var validationError = db.validateObject(level, fields);
	if (validationError.length > 0) {
		return res.status(400).send(validationError);
	}

	var query = "INSERT INTO levels SET ?";
	db.connection.query(query, level, function(err, result) {
		if (err) return res.status(500).send(err);
		return res.status(200).json(result.insertId);
	});
}

exports.readAll = function(req, res) {
		var query = "SELECT * FROM levels";
		db.connection.query(query, function(err, rows) {
			if (err) return res.status(500).json(err);
			return res.status(200).json(rows);
		});
}
