var express = require('express');
var router = express.Router();
const config = require('../config.json')

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: config.TITLE });
});

module.exports = router;
