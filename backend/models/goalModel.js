const { Schema, model } = require('mongoose'),

  goalSchema = Schema({
    // reference to a user
    user: {
      type: Schema.Types.ObjectId,
      required: true,
      ref: 'User'
    },
    text: {
      type: String,
      required: [true, 'Please add a text value']
    }
  }, { timestamps: true });

module.exports = model('Goal', goalSchema);