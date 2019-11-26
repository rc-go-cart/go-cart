const { Pool } = require('pg')

const pool = new Pool({
  host: 'localhost',
  port: 5432,
  user: 'rorycampbell', // process.env.POSTGRES_URL
  database: 'orderoo',
  ssl: process.env.NODE_ENV === 'production',
});

module.exports = pool;
