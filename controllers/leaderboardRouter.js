var express = require('express');
var router = express.Router();
var getLeaderboard = require('./getLeaderboard');

router.get('/', getLeaderboard);

module.exports = router;
