const router = require('express').Router();
const controller = require('../controller/order');

//retireve orders
router.get('/orders',controller.retrieveOrders);

//update order status
router.patch('/update',controller.update);

module.exports = router;