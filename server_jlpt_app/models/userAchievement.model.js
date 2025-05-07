const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const UserAchievement = sequelize.define('UserAchievement', {
  user_achievement_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  achievement_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  earned_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'UserAchievement',
  timestamps: false,
});

module.exports = UserAchievement;