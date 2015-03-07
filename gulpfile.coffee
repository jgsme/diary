gulp = require 'gulp'
jade = require 'gulp-jade-template'
rename = require 'gulp-rename'
styl = require 'gulp-stylus'
toJSON = require './gulp/helper/toJSON'

gulp.task 'build', ->
  gulp.src 'src/index.styl'
    .pipe styl()
    .pipe toJSON()
    .pipe jade 'src/index.jade'
    .pipe rename 'index.html'
    .pipe gulp.dest 'build'

gulp.task 'default', ['build']
