const ordersLogic = require("../logic/ordersLogic");
const express = require("express");


const router = express.Router();

 router.post("/", async (request, response) => {
    let token = request.headers.authorization;
    let order = request.body


    
    console.log("token" , token)
    
    console.log("order" , order)

  
    try {
      let successfulCartOrder = await ordersLogic.orderCart(token, order);
      response.json(successfulCartOrder)
    }
    catch(error) {
      console.log(error)
    }
   
  })

  router.get("/numberOfOrders", async (request, response) => {
    try {
      let numberOfOrders = await ordersLogic.numberOfOrders();
      response.json(numberOfOrders)
    }
    catch(error) {
      console.log(error)
    }
  })


  module.exports = router;