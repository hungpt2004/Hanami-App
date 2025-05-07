const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const QuizQuestion = sequelize.define('QuizQuestion', {
  question_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  quiz_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  question_text: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  correct_answer: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  option_1: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  option_2: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  option_3: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  option_4: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  audio_url: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  passage: {
    type: DataTypes.TEXT,
    allowNull: true,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'QuizQuestion',
  timestamps: false,
});

module.exports = QuizQuestion;