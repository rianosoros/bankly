/** Database setup for jobly. */

const { Client } = require('pg');
const { DB_URI } = require('./config');
console.log("db.js db_uri: " + DB_URI);

const client = new Client(DB_URI);

client.connect();

module.exports = client;
