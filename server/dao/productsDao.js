const connection = require("./connection-wrapper");


async function getAll() {
  let sql =  "SELECT id, name, category_id AS categoryId, price, image AS imageUrl FROM `products`"
  let products;
    try {
      products = await connection.execute(sql);
      return products
    } catch (e) {
     console.log(e)
    } 
  }

async function getProductsByCategory(id) {
  let sql = "SELECT p.id, p.name, p.category_id AS categoryId, p.price, p.image AS imageUrl FROM `products` p LEFT JOIN `product-category` pc ON p.category_id = pc.id WHERE pc.id = ?"
  let parameters = [id]
  let products;
  try {
    products = await connection.executeWithParameters(sql, parameters);
    return products
  } catch (e) {
   console.log(e)
  } 
}

async function updateProduct(product){
  let sql = "UPDATE products SET name = ?, price = ? where id= ?"
  let parameters = [
    product.name,
    product.price,
    product.id
  ];
  try{
     await connection.executeWithParameters(sql, parameters);
  }
  catch(error){
    console.log(error)
  }
}


async function createProduct(product){

   let sql = "INSERT INTO products (name, category_id, price, image ) VALUES (?, ?, ?, ?)"
   let parameters = [
     product.name,
     product.categoryId,
     product.price,
     product.imageUrl
   ];
   try{
   let response = await connection.executeWithParameters(sql, parameters);

    let newProduct = {
      id: response.insertId,
      name: product.name,
      categoryId: product.categoryId,
      price: product.price,
      image: product.imageUrl

    }
    return newProduct

 }
 catch(error){
   console.log(error)
 }

}



  module.exports = {
    getAll,
    getProductsByCategory,
    updateProduct,
    createProduct
}