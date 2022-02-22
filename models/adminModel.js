const mongoose = require('mongoose')

const AdminSchema = mongoose.Schema({
  email: {
    type: String,
    required: true,
  },
  password: {
    type: String,
    required: true,
  },
  isAdmin: {
    type: Boolean,
    required: true,
  }
},  
{
    timestamps: true,
})

module.exports = mongoose.model('Admin', AdminSchema)