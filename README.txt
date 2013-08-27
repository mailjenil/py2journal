 
 Creates Journal of engineering students for term-work submission in matter of seconds.

Needed Software:
Python
Latex

Input: Content(text or matlab or any files containing data)
Output:.tex file.(You need to compile .tex file for completed output)

Features:
It makes journal or report on basis of most common template found in journals.
Automatically extracts contents from files(whether it is .txt or .m or .c)
Prints as many Labs as folders under the root directory specified in the program.
Prints images specified in folders too.

Modifications:
You need to modify the root path in py2journal.py
If you are printing images,find 'scale' in python code and set it to appropriate value.

Structure:

Root directory should contain folders named:
  Lab1
  Lab2
  Lab3
  Lab4
  .
  .
  .
  .
  .
  Upto required labs
  (Root folder must not contain any files)
  
  Each folder under root folder should contain following files:
  
  ln.txt(Compulsory) # It contains lab name.
  q1.txt             # Question of first problem of lab 1
  c1.(any extension) # Code Content of the first problem
  s1-1.png           # If any Screenshots in the first problem
  s1-2.png           # If any Screenshots in second problem
  q2.txt             # Question of second problem of Lab 2
  c2.(any extension) # Code Content of second problem
  .
  .
  .
  .
  Upto Required problems in each lab.
  (This folder should only contain files not folders.)
  
  
  Example attached.
  
  
 
  Contact info:
  
  Jenil Shah
  mailjenil@gmail.com
