var mysql = require('mysql');

var databaseConfig = { 	host: "localhost",
								user: "matze",
								password: "password",
								database: "stupax"
							}

var connection = mysql.createConnection({
	host: databaseConfig.host,
	user: databaseConfig.user,
	password: databaseConfig.password,
	database: databaseConfig.database
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("[MySQL DB] Connected to " + databaseConfig.database + " @ " + databaseConfig.host);
});

exports.connection = connection;

// Checks for given object whether it contains all specified required fields
exports.validateObject = function(object, requiredFields) {
	if (object.length === 0) return "Missing object";

	var missingFields = [];
	requiredFields.forEach( function(field) {
		if (!(field in object)) {
			missingFields.push(field);
		}
	});
	if (missingFields.length > 0) return "Missing fields: " + missingFields.join(", ");
	return "";
}
