// Layers:
let usersDao = require("../dao/usersDao");

// Libraries / Files
const crypto = require("crypto");
const jwt = require("jsonwebtoken");
const config = require("../config.json");


const saltRight = "jv7tygfjj7l";
const saltLeft = "7u6rc653;z9v";



function generateToken(username) {
    return jwt.sign({ sub: username }, config.secret);
}


function hashPassword(password) {
  return crypto
    .createHash("md5")
    .update(saltLeft + password + saltRight)
    .digest("hex");
}




  function createSuccessfulLoginResponse(token, userData) {
    return {
      authToken: token,
      userType: userData.type,
      firstName: userData.firstName,
      userStreet: userData.street
    };
  }


async function login(loginDetails) {
    // inputValidations(loginDetails)
    
    if (
      loginDetails.username.trim() == "" ||
      loginDetails.password.trim() == ""
    ) {
      console.log( "All fields must be fill correctly." );
      return
    }
    loginDetails.password = hashPassword(loginDetails.password)
    let userLoginData = await usersDao.login(loginDetails);
    console.log(userLoginData)

    let token = generateToken(loginDetails.username);
    usersDao.setCache(token, userLoginData);
    let successfulLoginResponse = createSuccessfulLoginResponse(
      token,
      userLoginData
    );
    return successfulLoginResponse;
  }


async function createUser(user) {
  console.log(user)
  if (
    user.username.trim() == "" ||  user.password.trim() == ""
  ) {
    console.log( "All fields must be fill correctly." );
    return
  }
  user.password = hashPassword(user.password)
  console.log("Hashed password : " + user.password);
  let registerDetails = await usersDao.createUser(user);
  console.log(registerDetails)
  let token = generateToken(user.username);
  usersDao.setCache(token, registerDetails);
  let successfulLoginResponse = createSuccessfulLoginResponse(
    token,
    registerDetails
  );
  return successfulLoginResponse;
}



  module.exports = {
      login,
      createUser
  }

 