const categoriesLogic = require("../logic/categoriesLogic");
const express = require("express");


const router = express.Router();


 router.get("/", async (request, response) => {
    
    try {

      let categories = await categoriesLogic.getAll();
      response.json(categories);

    } catch (error) {

      console.log(error)

    }
  });

 

  
  module.exports = router;