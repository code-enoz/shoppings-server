const cartsLogic = require("../logic/cartsLogic");
const express = require("express");


const router = express.Router();


  router.post("/", async (request, response) => {
    let token = request.headers.authorization;
    try {
      let successfulCreatedCartResponse = await cartsLogic.createCart(token);
      response.json(successfulCreatedCartResponse)
    }
    catch (error) {
      console.log(error)
    }
  })

  router.post("/purchase", async (request, response) => {
    let cart = request.body
    let cartId = cart.cartId
    console.log("purchase cart id:", cartId)
    try{
      let purchasedCart = await cartsLogic.purchaseCart(cartId)
      response.json(purchasedCart)
    }
    catch (error) {
      console.log(error)
    }
  })

  router.get("/:id", async (request, response) => {
    
  let id = request.params.id

  try{
    let cart = await cartsLogic.getLastCart(id)
    response.json(cart)
  }
  catch (error) {
    console.log(error)
  }
  

  })

 

  module.exports = router;