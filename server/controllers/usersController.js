const usersLogic = require("../logic/usersLogic");
const express = require("express");


const router = express.Router();


 router.post("/login", async (request, response) => {
    let loginDetails = request.body;
    console.log(loginDetails)
    try {

      let successfulLoginResponse = await usersLogic.login(loginDetails);
      response.json(successfulLoginResponse);

    } catch (error) {

      console.log(error)

    }
  });


 router.post("/register", async (request, response) => {
  let user = request.body;
  
    try {

      let successfulLoginResponse = await usersLogic.createUser(user);
      response.json(successfulLoginResponse);

    } catch (error) {

      console.log(error)

    }
  })

 

  
  module.exports = router;