const router = require('express').Router();
const controller = require('../controller/user');

//customer signup
router.post('/signUp',controller.SignUp);

//customer login
router.post('/login',controller.login);

module.exports = router;