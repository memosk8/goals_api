const { Schema, model } = require('mongoose'),

  userSchema = Schema({
    name: {
      type: String,
      required: [true, 'Please add a name']
    },
    email: {
      type: String,
      required: [true, 'Please add an email'],
      unique: true
    },
    password: {
      type: String,
      required: [true, 'Please add your password']
    },
    admin: {
      type: Boolean,
      required: false,
      default: false
    }
  }, { timestamps: true });

module.exports = model('User', userSchema);