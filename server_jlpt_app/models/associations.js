const User = require('./user.model');
const Book = require('./book.model');
const Topic = require('./topic.model');
const Vocabulary = require('./vocabulary.model');
const Grammar = require('./grammar.model');
const GrammarExample = require('./grammerExample.model');
const FavoriteBook = require('./favorite.model');
const ChatMessage = require('./chat.model');
const Quiz = require('./quiz.model');
const QuizQuestion = require('./quizQuestion.model');
const UserQuiz = require('./userQuiz.model');
const Flashcard = require('./flashCard.model');
const CompetitionHistory = require('./competitionHistory.model');
const UserProgress = require('./userProgress.model');
const Achievement = require('./achievement.model');
const UserAchievement = require('./userAchievement.model');

// User relationships
User.hasMany(FavoriteBook, { foreignKey: 'user_id' });
User.hasMany(ChatMessage, { foreignKey: 'user_id' });
User.hasMany(UserQuiz, { foreignKey: 'user_id' });
User.hasMany(Flashcard, { foreignKey: 'user_id' });
User.hasMany(CompetitionHistory, { foreignKey: 'user_id' });
User.hasMany(UserProgress, { foreignKey: 'user_id' });
User.hasMany(UserAchievement, { foreignKey: 'user_id' });

// Book relationships
Book.hasMany(Topic, { foreignKey: 'book_id' });
Book.hasMany(FavoriteBook, { foreignKey: 'book_id' });

// Topic relationships
Topic.hasMany(Vocabulary, { foreignKey: 'topic_id' });
Topic.hasMany(Grammar, { foreignKey: 'topic_id' });

// Grammar relationships
Grammar.hasMany(GrammarExample, { foreignKey: 'grammar_id' });

// Quiz relationships
Quiz.hasMany(QuizQuestion, { foreignKey: 'quiz_id' });
Quiz.hasMany(UserQuiz, { foreignKey: 'quiz_id' });
Quiz.hasMany(CompetitionHistory, { foreignKey: 'quiz_id' });

// Achievement relationships
Achievement.hasMany(UserAchievement, { foreignKey: 'achievement_id' });

// Inverse relationships
FavoriteBook.belongsTo(User, { foreignKey: 'user_id' });
FavoriteBook.belongsTo(Book, { foreignKey: 'book_id' });
ChatMessage.belongsTo(User, { foreignKey: 'user_id' });
UserQuiz.belongsTo(User, { foreignKey: 'user_id' });
UserQuiz.belongsTo(Quiz, { foreignKey: 'quiz_id' });
Flashcard.belongsTo(User, { foreignKey: 'user_id' });
CompetitionHistory.belongsTo(User, { foreignKey: 'user_id' });
CompetitionHistory.belongsTo(Quiz, { foreignKey: 'quiz_id' });
CompetitionHistory.belongsTo(User, { foreignKey: 'opponent_id', as: 'Opponent' });
UserProgress.belongsTo(User, { foreignKey: 'user_id' });
UserAchievement.belongsTo(User, { foreignKey: 'user_id' });
UserAchievement.belongsTo(Achievement, { foreignKey: 'achievement_id' });
Topic.belongsTo(Book, { foreignKey: 'book_id' });
Vocabulary.belongsTo(Topic, { foreignKey: 'topic_id' });
Grammar.belongsTo(Topic, { foreignKey: 'topic_id' });
GrammarExample.belongsTo(Grammar, { foreignKey: 'grammar_id' });
QuizQuestion.belongsTo(Quiz, { foreignKey: 'quiz_id' });

module.exports = {
  User,
  Book,
  Topic,
  Vocabulary,
  Grammar,
  GrammarExample,
  FavoriteBook,
  ChatMessage,
  Quiz,
  QuizQuestion,
  UserQuiz,
  Flashcard,
  CompetitionHistory,
  UserProgress,
  Achievement,
  UserAchievement,
};