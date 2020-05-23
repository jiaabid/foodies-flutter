const mongoose = require('mongoose')
const bcrypt = require('bcryptjs')
const user = mongoose.Schema({
    email:{
        type:String,
        required:true,
        unique:true
    },
    password:{
        type:String,
        required:true,
        minlength:[5,"Too Short password,enter another"]
    }
});

//before saving hash the password
user.pre('save',async function(next){
    try{
        if(this.isModified("password")){
            this.password = await bcrypt.hash(this.password,10)
            next(); 
        }
    }catch(err){
        console.log(err);
        next(err);
    }
})

//find the user by email and compare the passwords
user.statics.findCredentials = async(email,password)=>{
    try{
        const person = await profile.findOne({email});
        if(!person){
            throw new Error("Invalid Email , Retry!");
        }
        const same = await bcrypt.compare(password,person.password)
        console.log(same)
        if(!same){
            throw new Error("Invalid Password!");
        }
        console.log(person)
        return person;
    }
    catch(err){
        return err;
    }
}
//token generator function 

//model
const profile = mongoose.model("customers",user);
module.exports = profile