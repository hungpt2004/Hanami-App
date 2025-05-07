const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Book = sequelize.define('Book', {
  book_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  title: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jlpt_level: {
    type: DataTypes.ENUM('N5', 'N4', 'N3', 'N2', 'N1'),
    allowNull: true,
  },
  is_premium: {
    type: DataTypes.BOOLEAN,
    defaultValue: false,
  },
  book_type: {
    type: DataTypes.ENUM('VOCABULARY', 'GRAMMAR'),
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'Book',
  timestamps: false,
});

module.exports = Book;