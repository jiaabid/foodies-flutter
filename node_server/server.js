const express = require('express');
const app = express();
//creating db connection
const dbConnected = require('./db/mongoose');
app.use(express.json());

//MobileApp
const orderRoute = require('./MobileAppControllers/routes/order');
const userRoute = require('./MobileAppControllers/routes/user');
app.use('/mob/order/',orderRoute);
app.use('/mob/user/',userRoute);

//WebApp
const menuRoute = require('./WebAppController/routes/menu');
const adminOrder = require('./WebAppController/routes/order');
app.use('/web/order/',adminOrder);
app.use('/web/menu/',menuRoute);

//starting server
if(dbConnected){
    app.listen(3000, () => {
        console.log("server started");
    });
}else{
    console.log("error in connecting to db")
}
