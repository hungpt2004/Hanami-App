const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const UserQuiz = sequelize.define('UserQuiz', {
  user_quiz_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  quiz_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  score: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  completed_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'UserQuiz',
  timestamps: false,
});

module.exports = UserQuiz;