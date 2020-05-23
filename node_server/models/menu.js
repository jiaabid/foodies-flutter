const mongoose = require('mongoose');
const CategorySchema = mongoose.Schema({
    cat:
    {
        type: String,
        required: true
    }
})
const Category = mongoose.model("category", CategorySchema);
const menuSchema = mongoose.Schema({
    category: {
        type: String,
        required: true
    },
    name: {
        type: String,
        required: true
        //validations pending
    },
    price: {
        type: Number,
        required: true,
        validator(param) {
            if (!param > 0) {
                throw new Error("Invalid Price!");
            }
        }
    },

    servingTime: {
        type: String,
        default: "30"
    },
    desc: {
        type: String,
        required: true
    }
    //imageUrl:{

    //}

})



//extract unique cats
menuSchema.pre('save', async function (next) {
    try {

        const existingCategories = await Category.findOne({ cat: this.category });
        console.log(existingCategories)
        if (existingCategories == null) {
            const cat = new Category({ cat: this.category });
            await cat.save();
            next();
        }
        next();
    } catch (err) {
        next(err);
    }


})
const menu = mongoose.model("menu", menuSchema);
module.exports = menu;