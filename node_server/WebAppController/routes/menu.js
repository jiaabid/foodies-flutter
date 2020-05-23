const router = require('express').Router();
const controller = require('../controller/menu');

//addItem
router.post('/add',controller.addMenu);

//updateItem
router.patch('/update',controller.updateItem);

//deleteItem
router.delete('/dlt',controller.dltItem);

//retrieve items
router.get('/items',controller.retrieveItems);

module.exports = router;
