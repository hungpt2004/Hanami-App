const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Achievement = sequelize.define('Achievement', {
  achievement_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  description: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  point_threshold: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  jlpt_level: {
    type: DataTypes.ENUM('N5', 'N4', 'N3', 'N2', 'N1', 'NONE'),
    allowNull: true,
  },
  created_at: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'Achievement',
  timestamps: false,
});

module.exports = Achievement;