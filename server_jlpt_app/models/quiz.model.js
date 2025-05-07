const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Quiz = sequelize.define('Quiz', {
  quiz_id: {
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
  quiz_type: {
    type: DataTypes.ENUM('VOCABULARY', 'GRAMMAR', 'READING', 'LISTENING'),
    allowNull: false,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'Quiz',
  timestamps: false,
});

module.exports = Quiz;