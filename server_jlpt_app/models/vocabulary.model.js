const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Vocabulary = sequelize.define('Vocabulary', {
  vocabulary_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  topic_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  word: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  kanji: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  meaning: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  reading: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'Vocabulary',
  timestamps: false,
});

module.exports = Vocabulary;