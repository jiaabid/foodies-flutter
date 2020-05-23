const mongoose = require('mongoose');
try{
    mongoose.connect("mongodb://127.0.0.1:27017/foodies", {
        useNewUrlParser: true,
        useCreateIndex: true,
        useUnifiedTopology: true,
        useFindAndModify: false
    });
    return true    
}catch(err){
    return false
}
