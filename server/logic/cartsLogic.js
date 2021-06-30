let cartsDao = require("../dao/cartsDao");
let usersCache = require("../dao/usersCache");

async function createCart(token){
    let userDetails = usersCache.getDetails(token);
    let userId = userDetails.id;
    let cart = await cartsDao.createCart(userId)
    let successfulCreatedCartResponse = {
        cartId: cart.id,
        userId: cart.userId
    }
    return successfulCreatedCartResponse;
}

async function purchaseCart(cartId){
    let purchasedCart = await cartsDao.purchaseCart(cartId)
    return purchasedCart
}

async function getLastCart(id){
    let cart = await cartsDao.getLastCart(id)
    return cart
}







module.exports = {
   createCart,
   purchaseCart,
   getLastCart
}
