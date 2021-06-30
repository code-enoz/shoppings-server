const connection = require("./connection-wrapper");



async function purchaseCart(cartId) {
  let sql = "UPDATE carts SET is_ordered = 1 WHERE id = ?; "
  let parameters = [cartId]
  let response;
  try {
    response = await connection.executeWithParameters(sql, parameters);
  } catch (e) {
   console.log(e)
  }
  return response
}




async function createCart(userId) {
    
    let sql =

    "INSERT INTO carts (user_id, created_at) VALUES (?, localtimestamp())"
    let parameters = [
      userId
    ];
    try {
      let response = await connection.executeWithParameters(sql, parameters);
    
    let successfulCreatedCartResponse = {
      id: response.insertId,
      userId: userId

    }
    return successfulCreatedCartResponse
    } catch (e) {
      console.log(e)
    }
  }

 

  module.exports = {
   
    purchaseCart,
    createCart
   
}