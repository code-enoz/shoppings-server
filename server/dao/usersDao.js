const connection = require("./connection-wrapper");
const usersCache = require("../dao/usersCache");
// against sql injection (ex: || 1 = 1)

async function login(loginDetails) {
    let sql =
    
      "SELECT id, name AS firstName, family_name AS familyName , street, username, type  FROM users u WHERE u.username = ? AND u.password = ?";
    let parameters = [loginDetails.username, loginDetails.password];
    let response;
    try {
      response = await connection.executeWithParameters(sql, parameters);
    } catch (e) {
     console.log(e)
    }
    if (response == null || response.length == 0) {
      console.log("unauthorized")
    }
  
    return response[0];
  }

  async function createUser(user) {
    user.type= "client"
    let sql =
      "INSERT INTO users (name, family_name, username, password, street, city, type) values(?,?,?,?,?,?,?)";
    let parameters = [
      user.name,
      user.familyName,
      user.email,
      user.password,
      user.street,
      user.city,
      user.type
    ];
    try {
      let response = await connection.executeWithParameters(sql, parameters);
      let successfulRegisterDetails = {
        id: response.insertId,
        name: user.name,
        familyName: user.familyName,
        username: user.userName,
        password: user.password,
        street: user.street,
        type: user.type
      };
      return successfulRegisterDetails;
    } catch (e) {
      console.log(e)
    }
  }



  function setCache(token, userDetails) {
    usersCache.setUserCache(token, userDetails);
    console.log(usersCache);
  }


  module.exports = {
      login,
      createUser,
      setCache
  }