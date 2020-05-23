const menu = require('../../models/menu');

//add menuItem
const addMenu = async (req, res) => {
    try {
        const obj = {
            name: "cheesy blast",
            price: 400,
            category: "burger",
        }
        const item = new menu(req.body);
        if (!item) {
            console.log(item)
            throw new Error("Something fishy,Retry!");
        }
        await item.save();
        res.status(201).json(item);
    } catch (err) {
        res.status(400).json(err);
    }
}
//update Item
const updateItem = async (req, res) => {
    try {

        const fieldToUpdate = Object.keys(req.body);
        const item = await menu.findOne(req.query);
        if (!item)
            throw new Error("No such items exist");
        fieldToUpdate.every(field => item[field] = req.body[field]);
        await item.save();
        res.status(200).json({
            item,
            updated: true
        });

    } catch (err) {
        res.status(400).json(err);
    }
}
//delete Item
const dltItem = async (req, res) => {
    try {
        //req.query  = {_id : abc}
        const item = await menu.findOne(req.query);
        if (!item) {
            throw new Error("Not found");
        }
        await item.remove()
        res.status(200).json({
            item,
            deleted: true
        });
    } catch (err) {
        res.status(400).json(err);
    }
}
//getAllmenu
const retrieveItems = async (req, res) => {
    try {
        //req.query = {category : whatever(paginate according to category)}
        const items = await menu.find(req.query);
        if(items.length == 0){
            return res.status(404).json({
                items,
                found:false
            });
        }
        res.status(200).json({
            items,
            found:true
        });
    } catch (err) {
        return res.status(400).json({
            items,
            found:false
        });
    }
}

module.exports = {addMenu,updateItem,dltItem,retrieveItems};