const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const User = sequelize.define('User', {
  user_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  username: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jlpt_level: {
    type: DataTypes.ENUM('N5', 'N4', 'N3', 'N2', 'N1'),
    allowNull: true,
  },
  streak: {
    type: DataTypes.INTEGER,
    defaultValue: 0,
  },
  last_login: {
    type: DataTypes.DATE,
    allowNull: true,
  },
  total_points: {
    type: DataTypes.INTEGER,
    defaultValue: 0,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
  api_key: {
    type: DataTypes.STRING,
    allowNull: true,
    unique: true,
  },
}, {
  tableName: 'User',
  timestamps: false,
});

module.exports = User;