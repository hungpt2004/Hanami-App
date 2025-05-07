const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const FavoriteBook = sequelize.define('FavoriteBook', {
  favorite_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  book_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  added_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'FavoriteBook',
  timestamps: false,
});

module.exports = FavoriteBook;