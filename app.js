const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('🚀 Hello from Group 8 - TECH2102!');
});

app.listen(port, () => {
  console.log(`App is running on http://localhost:${port}`);
});
