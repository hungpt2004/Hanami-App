const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const CompetitionHistory = sequelize.define('CompetitionHistory', {
  competition_id: {
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
  opponent_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  user_score: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  opponent_score: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
  start_time: {
    type: DataTypes.DATE,
    allowNull: false,
  },
  end_time: {
    type: DataTypes.DATE,
    allowNull: true,
  },
  result: {
    type: DataTypes.ENUM('WIN', 'LOSS', 'DRAW'),
    allowNull: false,
  },
}, {
  tableName: 'CompetitionHistory',
  timestamps: false,
});

module.exports = CompetitionHistory;