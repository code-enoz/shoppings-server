const connection = require("./connection-wrapper");


async function getAll() {
  let sql =  "SELECT id, name FROM `product-category`"
  let categories;
    try {
      categories = await connection.execute(sql);
      return categories
    } catch (e) {
     console.log(e)
    } 
  }


  module.exports = {
    getAll
}