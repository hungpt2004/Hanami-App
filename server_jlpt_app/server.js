// server.js
const express = require("express");
const app = express();
const userRoutes = require("./routes/user.routes");
const sequelize = require("./config/db.config");
const models = require('./models/associations')

// Middleware để parse JSON body
app.use(express.json());

// Kết nối các routes
app.use("/users", userRoutes);

// Kết nối với MSSQL và Tạo bảng

sequelize
  .authenticate()
  .then(() => {
    console.log("Database connected!");
    return sequelize.sync(); // Tạo bảng từ các model (nếu chưa tồn tại)
  })
  .then(() => {
    app.listen(3000, () => {
      console.log("Server is running on http://localhost:3000");
    });
  })
  .catch((err) => {
    console.error("Unable to connect to the database:", err);
  });

(async () => {
   try {
     await sequelize.authenticate();
     console.log('Connection to MSSQL has been established successfully.');
 
     // Sync all models with the database
     await sequelize.sync({ force: true }); // Use { force: true } for development to drop and recreate tables
     console.log('Database synchronized successfully.');
   } catch (error) {
     console.error('Unable to connect to the database:', error);
   }
 })();