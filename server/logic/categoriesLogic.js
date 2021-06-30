let categoriesDao = require("../dao/categoriesDao");


async function getAll() {

let categories = await categoriesDao.getAll()
return categories

}



module.exports = {
    getAll
}