const express = require('express');
const pool = require('./db');

const app = express();
const PORT = process.env.PORT || 3000;

    
app.get('/', (req, res) => {
  res.send('Node ECS');
});
////////////////////#####################
app.get('/db-check', async (req, res) => {
  try {
    // const [rows] = await pool.query('SELECT 1 AS test');
    res.send('Database connected successfully!');
  } catch (error) {
    console.error('DB Connection Error:', error);
    res.status(500).send('Database connection failed.');
  }
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
