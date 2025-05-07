// controllers/userController.js
const User = require('../models/user.model');

// Lấy tất cả người dùng
exports.getAllUsers = async (req, res) => {
  try {
    const users = await User.findAll(); // Lấy tất cả người dùng
    res.json(users);  // Trả về dữ liệu dưới dạng JSON
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Lấy một người dùng theo id
exports.getUserById = async (req, res) => {
  try {
    const user = await User.findByPk(req.params.id);  // Tìm theo ID
    if (!user) return res.status(404).json({ message: 'User not found' });
    res.json(user);  // Trả về người dùng
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Tạo một người dùng mới
exports.createUser = async (req, res) => {
  try {
    const { name, email } = req.body;
    const newUser = await User.create({ name, email });  // Tạo người dùng mới
    res.status(201).json(newUser);  // Trả về người dùng mới được tạo
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Cập nhật thông tin người dùng
exports.updateUser = async (req, res) => {
  try {
    const { name, email } = req.body;
    const user = await User.findByPk(req.params.id);  // Tìm người dùng theo ID
    if (!user) return res.status(404).json({ message: 'User not found' });

    // Cập nhật thông tin
    user.name = name;
    user.email = email;
    await user.save();

    res.json(user);  // Trả về người dùng đã cập nhật
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// Xóa người dùng
exports.deleteUser = async (req, res) => {
  try {
    const user = await User.findByPk(req.params.id);  // Tìm người dùng theo ID
    if (!user) return res.status(404).json({ message: 'User not found' });

    await user.destroy();  // Xóa người dùng
    res.json({ message: 'User deleted successfully' });
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};
