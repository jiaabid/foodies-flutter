const Order = require('../../models/order');

let page, limit;
//retrieve orders 
const retrieveOrders = async (req, res) => {
    page = req.query.page || 0;
    limit = 25;
    try {
        const total = await Order.countDocuments({ status: req.query.status });
        console.log(total)
        if (!(total.length == 0)) {
            const shelf = await Order
                .find({ status: req.query.status })
                .limit(limit)
                .skip(page * limit);
         const pages = Math.ceil(total/25);       
            return res.status(200).json({
                shelf, pages,total
            })
        }
        res.status(200).json();

    } catch (err) {
        res.status(404).json(err)
    }
}

//update the order by admin
const update = async (req, res) => {
    try {
        //req.body = {status: ready etc} || {delay : 10 mint etc }
        const order = await (await Order.findOne({ _id: req.query.id })).updateOne(req.body);
        if (!order)
            throw new Error("Not Found");
        res.status(200).json(order);
    } catch (err) {
        res.status(400).json(err);
    }
}
module.exports = {retrieveOrders,update};