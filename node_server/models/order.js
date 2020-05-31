const mongoose = require('mongoose');
const OrderSchema = mongoose.Schema({
    items: [
        {
            itemName: String,
            quantity: {
                type: Number,
                required: [true, "No item is in cart"],
                validate(param) {
                    if (!param > 0) {
                        throw new Error("Cant place order!")
                    }
                }
            },
            price: {
                type: Number,
                required: [true, "Price cant be null"],
                validate(param) {
                    if (!param > 0) {
                        throw new Error("Invalid price")
                    }
                }
            },
            category: String
        }
    ],
    totalPrice: {
        type: Number,
        default: 0
    },
    deliveryTime: String,
    status: {
        type: String,
        default: "coming"
    },
    userID: {
        type: String,
        ref: "cusomers",
        validate(param) {
            if (param == null) {
                throw new Error("Cant place unknown order")
            }
        }
    }
});
OrderSchema.pre('save', async function (next) {
    try {

        this.items.forEach(item => {
            this.totalPrice += (item.price * item.quantity)
        });

        next();
    } catch (err) {
        next(err)
    }
})
const Order = mongoose.model("orders", OrderSchema)
module.exports = Order