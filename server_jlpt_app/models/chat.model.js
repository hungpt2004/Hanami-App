const { DataTypes } = require('sequelize');
const sequelize = require('../config/db.config');

const ChatMessage = sequelize.define('ChatMessage', {
  message_id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
  },
  message_text: {
    type: DataTypes.TEXT,
    allowNull: false,
  },
  is_user_message: {
    type: DataTypes.BOOLEAN,
    defaultValue: true,
  },
  timestamp: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW,
  },
}, {
  tableName: 'ChatMessage',
  timestamps: false,
});

module.exports = ChatMessage;