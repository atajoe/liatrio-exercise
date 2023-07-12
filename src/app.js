// require('dotenv').config()
const helper = require('../src/utils/helper');
const express = require('express');
const cors = require('cors');
// Setting up Express App
const app = express();
const PORT = 3001;

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Express routers

// TODO: Include seconds with time
app.get('/', (req,res) => res.json({"message": "Automate all things!", "timestamp": helper.getDate()}));

app.listen(PORT, () => console.log('App listening on PORT: ', PORT))

// Handle unknown endpoint
app.use(helper.unknownEndPoint);

