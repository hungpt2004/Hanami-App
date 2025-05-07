// db.js
const { Sequelize } = require("sequelize");

// Cấu hình kết nối MSSQL
const sequelize = new Sequelize("JLPTApp", "sa", "123321", {
  host: "127.0.0.1", // Địa chỉ máy chủ MSSQL
  dialect: "mssql", // Chỉ định MSSQL
  dialectModule: require("tedious"), // Sử dụng thư viện tedious để kết nối
  define: {
    freezeTableName: true, // Ngăn Sequelize tự động đổi tên bảng sang số nhiều
  },
});

module.exports = sequelize;
