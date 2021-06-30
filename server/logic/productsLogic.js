let productsDao = require("../dao/productsDao");



async function getAll() {

let products = await productsDao.getAll()

return products
}

async function getProductsByCategory(id) {
    let products = await productsDao.getProductsByCategory(id)

    return products
}

async function updateProduct(product){

let updatedProduct = await productsDao.updateProduct(product)
return updatedProduct

}

async function createProduct(product){

   let newProduct = await productsDao.createProduct(product)
   return newProduct

}







module.exports = {
    getAll,
    getProductsByCategory,
    updateProduct,
    createProduct
}