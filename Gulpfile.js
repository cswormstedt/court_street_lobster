var gulp  = require('gulp');
var less  = require('gulp-less');
var watch = require('gulp-watch');

gulp.task('watch', function(){
	gulp.watch(['./public/styles/*.less'], ['compile-less']);
})

gulp.task('compile-less', function(){
	gulp.src('./public/styles/style.less')
	.pipe(less())
	.pipe(gulp.dest('./public/styles/'))
})

gulp.task('default', ['compile-less', 'watch'])