gutil = require 'gulp-util'
through = require 'through2'

module.exports = ->
  transform = (file, encoding, callback)->
    obj =
      style: file.contents.toString()
    file.contents = new Buffer JSON.stringify obj
    callback null, file
  through.obj transform
