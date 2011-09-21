# Gradekit

A toolkit for accelerating the process of grading student programming assignments for [CSCI261 Programming Concepts](http://mines.humanoriented.com/261) at the [Colorado School of Mines](http://mines.edu).

## Setup & Dependencies

Gradekit is written in Ruby 1.9.2 and relies on some gems and a working installation of [Sublime Text 2](http://www.sublimetext.com/2) with the <tt>sublime_text</tt> executable in your <tt>PATH</tt>. I recommend using [rvm](http://beginrescueend.com/) to establish your ruby environment and creating a gemset specifically for the gradekit.

* Install [rvm](http://beginrescueend.com/), add the <tt>rvm</tt> executable to your path, install ruby 1.9.2 with rvm, and create a gemset called <tt>gradekit</tt>.
* Install [Sublime Text 2](http://www.sublimetext.com/2) and add the <tt>sublime_text</tt> executable to your +PATH+.
* Create a directory, say, <tt>grading</tt>, within which you intend to conduct your grading work.
* Create the file <tt>grading/.rvmrc</tt> that contains the line `rvm use 1.9.2@gradekit`.
* From within your <tt>grading</tt> directory, install the bundler gem and the gradekit gem.

To verify that your environment is ready to conduct grading, execute the <tt>check</tt> workflow:

    gradekit check

Executing that workflow should tell you that everything is ok, or tell you what dependencies are missing from your environment.

## Quick Start

Download an assignment "amalgamation" .zip file from blackboard to your working directory. Next, start the grading workflow:

    gradekit grade ##_assignmentName

When complete, you should see a new Sublime Text window whose sidebar contains a directory called <tt>students</tt> and a file called <tt>##_assignmentName.gradesheet.txt</tt>.

## How to Grade

The goal of Gradekit is to accelerate, not automate, the end-to-end grading process.

TODO

## Support

TODO


Copyright &copy; 2011 Yong Joseph Bakos. All rights reserved.
