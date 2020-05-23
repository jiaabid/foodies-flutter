const profile = require('../../models/user');

//signup
const SignUp = async (req, res) => {
    try {
        const obj = {
            email: "jia@gmail.com",
            password: "wajihaabid"
        }
        const user = new profile(req.body);
        await user.save();
        res.status(201).json(user)
    } catch (err) {
        res.status(400).json(err)
    }
}

//login 
const login = async(req,res)=>{
    try{
        const {email,password} = req.body
         const user = await profile.findCredentials(email,password);
         res.status(200).json(user)
    }catch(err){
res.status(400).json(err)
    }
}
module.exports = {SignUp,login}