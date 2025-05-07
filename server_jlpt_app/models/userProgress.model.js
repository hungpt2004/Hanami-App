const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const UserProgress = sequelize.define('UserProgress', {
  progress_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  content_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  content_type: {
    type: DataTypes.ENUM('BOOK', 'TOPIC', 'VOCABULARY', 'GRAMMAR', 'QUIZ', 'FLASHCARD'),
    allowNull: false,
  },
  progress_status: {
    type: DataTypes.ENUM('NOT_STARTED', 'IN_PROGRESS', 'COMPLETED'),
    allowNull: false,
  },
  last_accessed: {
    type: DataTypes.DATE,
    allowNull: true,
  },
  completion_date: {
    type: DataTypes.DATE,
    allowNull: true,
  },
}, {
  tableName: 'UserProgress',
  timestamps: false,
});

module.exports = UserProgress;