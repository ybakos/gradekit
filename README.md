## Note: This gem doesn't work yet.

# Gradekit [![Build Status](https://secure.travis-ci.org/ybakos/gradekit.png)](http://travis-ci.org/ybakos/gradekit)

A toolkit for accelerating the process of grading student programming assignments for [CSCI261 Programming Concepts](http://mines.humanoriented.com/261) at the [Colorado School of Mines](http://mines.edu).

## Setup & Dependencies

Gradekit is written in Ruby 1.9.2 and relies on <tt>make</tt>, some Ruby gems and a working installation of [Sublime Text 2](http://www.sublimetext.com/2) with the <tt>sublime_text</tt> executable in your <tt>PATH</tt>. I recommend using [rvm](http://beginrescueend.com/) to establish your ruby environment and creating a gemset specifically for the gradekit.

* Ensure you have the <tt>gcc</tt> suite of tools (<tt>make</tt>, etc) installed on your system and in your <tt>PATH</tt>.
* Install [rvm](http://beginrescueend.com/), add the <tt>rvm</tt> executable to your path, install ruby 1.9.2 with rvm, and create a gemset called <tt>gradekit</tt>.
* Install [Sublime Text 2](http://www.sublimetext.com/2) and add the <tt>sublime_text</tt> executable to your <tt>PATH</tt>.
* Create a directory, say, <tt>grading</tt>, within which you intend to conduct your grading work.
* Create the file <tt>grading/.rvmrc</tt> that contains the line `rvm use 1.9.2@gradekit`.
* From within your <tt>grading</tt> directory, install the bundler gem and the gradekit gem.

To verify that your environment is ready to conduct grading, execute the <tt>check</tt> workflow:

    gradekit check

Executing that workflow should tell you that everything is ok, or tell you what dependencies are missing from your environment. This gradekit is only for OSX and Linux operating systems; it will not run out of the box on Windows.

## Quick Start

Download an assignment "amalgamation" .zip file from [blackboard](http://blackboard.mines.edu) to your working directory. Next, start the grading workflow:

    gradekit grade ##_assignmentName

When complete, you should see a new Sublime Text window whose sidebar contains a directory called <tt>students</tt> and a file called <tt>##_assignmentName.gradesheet.txt</tt>.

## How to Grade

The goal of Gradekit is to accelerate, not automate, the entire grading process. This grading process is as follows.

* Crack open a beer.
* Execute the gradekit <tt>grade</tt> workflow.
* Pay attention to the output generated on the console
    * Make a note of things like "Bad Submission," "Could not compile," or "Execute Manually." In each case, you will need to manually inspect the student's submission.
* Review the gradesheet displayed in the Sublime Text 2 window.
    * Perfect score? Review the student's code and provide feedback regarding style.
    * Bad submission? Inspect the student's submission. If there is a relevant <tt>cpp</tt> file containing code for the assignment, then manually review, compile, execute, and grade manually.
        * <tt>make students/username/filename_base</tt> to compile
        * <tt>students/username/filename_base</tt> to execute
        * <tt>sublime_text students/username/filename_base.cpp</tt> to view the code
    * Couldn't compile? Try compiling manually, then execute, review the code, and grade manually.
        * <tt>make students/username/filename_base</tt>
        * <tt>students/username/filename_base</tt> to execute
        * <tt>sublime_text students/username/filename_base.cpp</tt> to view the code
    * Need to execute manually? This is often due to the student's program not terminating after being executed with input provided by the gradekit. You must manually execute and grade the assignment.
       * <tt>students/username/filename_base</tt> to execute
       * <tt>sublime_text students/username/filename_base.cpp</tt> to view the code
    * Were any items marked 0 or ? on the student's score card? Inspect the code and attempt to award back partial credit, where applicable.
    * Update the total points as necessary, keeping in mind lateness deductions where relevant.
* Once all student scores are updated, methodically enter the grades in Blackboard's "Grade Center." After entering a student's score, paste the contents of the students scorecard as a "Quick comment."
* Crack open another beer.

## Support

No support is provided for this toolkit outside of the scope of the CSCI261 class for which it is designed.



Copyright &copy; 2011 Yong Joseph Bakos. All rights reserved.
