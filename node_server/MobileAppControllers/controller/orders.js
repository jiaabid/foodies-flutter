const Order = require('../../models/order')
//add order

const addOrder = async (req, res) => {
    try {

        const obj = {
            items: [
                {
                    itemName: "coffee",
                    price: 200,
                    quantity: 3,
                    category: "drinks",

                },
                {
                    itemName: "Cheesy blast",
                    price: 400,
                    quantity: 2,
                    category: "burger",

                }
            ],
            deliveryTime: "4:45",
            totalPrice: 1400,
            userID: "5ec6dd57f55a390ed05568e7"
        };

        const order = new Order({...req.body, userID: "5ec6dd57f55a390ed05568e7"});
        await order.save();
        res.status(201).json(order)
    } catch (err) {
        res.status(400).json(err)
    }
}

module.exports = { addOrder }