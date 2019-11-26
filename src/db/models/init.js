const pool = require('../connection');
const fs = require('fs');
const path = require('path');

const query = fs.readFileSync(path.resolve(__dirname + '/init.sql')).toString()

const go = async() => {
    await pool.query(query);
    process.exit(0);
};
go()