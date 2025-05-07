const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const Topic = sequelize.define('Topic', {
  topic_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  book_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  title: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  order: {
    type: DataTypes.INTEGER,
    allowNull: false,
  },
}, {
  tableName: 'Topic',
  timestamps: false,
});

module.exports = Topic;