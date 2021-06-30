const express = require("express");
const cors = require("cors");


const usersController = require("./controllers/usersController");
const productsController = require("./controllers/productsController");
const categoriesController = require("./controllers/categoriesController");
const cartsController = require("./controllers/cartsController");
const ordersController = require("./controllers/ordersController");


// Init + Routings
const server = express();
server.use(cors({ origin: "http://localhost:4200", credentials: true }));
server.use(express.json());
server.use("/users", usersController);
server.use("/products", productsController);
server.use("/categories", categoriesController);
server.use("/carts", cartsController);
server.use("/orders", ordersController);


// Server listen:
server.listen(3001, () => console.log("Listening on http://localhost:3001"));