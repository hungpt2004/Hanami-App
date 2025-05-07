const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Flashcard = sequelize.define('Flashcard', {
  flashcard_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  front_content: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  back_content: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  jlpt_level: {
    type: DataTypes.ENUM('N5', 'N4', 'N3', 'N2', 'N1'),
    allowNull: true,
  },
  is_public: {
    type: DataTypes.BOOLEAN,
    defaultValue: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
  updated_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'Flashcard',
  timestamps: true,
  updatedAt: 'updated_at',
  createdAt: 'created_at',
});

module.exports = Flashcard;