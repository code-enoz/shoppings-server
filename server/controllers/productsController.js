const productsLogic = require("../logic/productsLogic");
const express = require("express");


const router = express.Router();

router.get("/", async (request, response) => {
     
    
    try {

      let products = await productsLogic.getAll();
      response.json(products);

    } catch (error) {

      console.log(error)

    }
  });

router.get("/:id", async (request, response) => {
  
  let id = request.params.id

  try{
    let products = await productsLogic.getProductsByCategory(id);
    response.json(products);
  } catch (error) {
    console.log(error)
  }
})

router.post("/", async (request, response) => {
  let product = request.body

  try{
   let updatedProduct = await productsLogic.updateProduct(product)
   response.json(updatedProduct)
  } catch (error) {
    console.log(error)
  }
})

router.post("/create", async (request, response) => {
  let product = request.body
  console.log(product)
  try{
    let newProduct = await productsLogic.createProduct(product)
    response.json(newProduct)
  } catch (error) {
    console.log(error)
  }
})

  module.exports = router;