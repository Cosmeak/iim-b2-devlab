const mongoose = require('mongoose');

const PositionSchema = mongoose.Schema({
  box: {
    type: String,
    required: true,
  },
  utility: {
    type: String,
    required: true,
  },
  position: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Object', 
    required: false,
  },
});

const PositionModel = mongoose.model('Position', PositionSchema);

module.exports = { PositionModel };