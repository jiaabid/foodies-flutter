const router = require('express').Router();
const controller = require('../controller/orders');

//placing order
router.post('/add',controller.addOrder);

module.exports = router;