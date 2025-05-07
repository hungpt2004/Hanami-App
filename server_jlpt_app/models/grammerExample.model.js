const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const GrammarExample = sequelize.define('GrammarExample', {
  example_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  grammar_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  example_sentence: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  translation: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'GrammarExample',
  timestamps: false,
});

module.exports = GrammarExample;