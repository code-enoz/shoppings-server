const connection = require("./connection-wrapper");

async function numberOfOrders(){
   let sql = "SELECT COUNT(*)  FROM shopping_app.orders;"
   try{
     let numberOfOrders = await connection.execute(sql);
     return numberOfOrders
  
   }
   catch(error){
     console.log(error)
   }
}


async function orderCart(order) {

    console.log(order)
   
    let sql = 
 `INSERT INTO orders(user_fk, cart_fk, price, ship_to_city, ship_street, ship_date, cr4digits, checked_at ) VALUES (?, ?, ?, ?, ?, ?, ?, localtimestamp())`
 let parameters = [
 order.userId,
 order.cartId,
 order.price,
 order.city,
 order.street,
 order.deliveryDate,
 order.cr4Digits,
 ]
 try{
    await connection.executeWithParameters(sql, parameters);
    console.log("success!")
 }
 catch(error){
   console.log("error!" + error)
 }
 }


 module.exports = {
   
    orderCart,
    numberOfOrders
   
}