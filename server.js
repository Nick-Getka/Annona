const express = require('express');
const path = require('path');
const app = express();

app.use('/api', require('./routes/apiRoutes'));

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on port ${port}...`));