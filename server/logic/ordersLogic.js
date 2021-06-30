let ordersDao = require("../dao/ordersDao");
let usersCache = require("../dao/usersCache");

async function orderCart(token, order){

    usersOrder = JSON.stringify(order)
    orderToDao = JSON.parse(usersOrder)
    let userDetails = usersCache.getDetails(token);
    let userId = userDetails.id;
    order.userId = userId;
    console.log("user details:" , userDetails)
    console.log("user id" , userId)
    console.log("order.userId" , order.userId)
    // console.log("user id: " + userId)
    // console.log("order details: " + orderToDao.price)
    let successfulCartOrder = await ordersDao.orderCart(order);
    console.log("successfulCartOrder: " + successfulCartOrder);

}

async function numberOfOrders(){
    let number = await ordersDao.numberOfOrders()
    let numberOfOrders = number[0]['COUNT(*)']
    return numberOfOrders
}

module.exports = {
    orderCart,
    numberOfOrders
}

