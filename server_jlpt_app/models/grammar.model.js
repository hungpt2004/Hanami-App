const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Grammar = sequelize.define('Grammar', {
  grammar_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  topic_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  structure_name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  meaning: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'Grammar',
  timestamps: false,
});

module.exports = Grammar;