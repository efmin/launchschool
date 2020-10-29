Lecture: Problem-Solving Part I
Exploring: 
  (1) Understanding the Problem 
  (2) Test Cases
Next Lecture:
  (3) How to Solve It
 
(1) & (2) Understanding the Problem:
  1. Input/Output
  - never go by examples
  - take notes for explicit requirements
  - create computational model for implicit requirements
  - if done completely, you should know EXACTLY how to go from input to output from your notes here. If not, you're either missing something (ask the interview) or you need to make something implicit explicit.


(3) How to Solve It: 
  - Know the building blocks of your language:
    - memorize all methods for Strings, Arrays, Hashes, Enumerables, Integers so that you have the capacity to conceptualize problem in non-linear mode
  - Choose data structure deliberately:
    - data structure == algorithmn pretty much, esp in Ruby
    - You want to arrange and store your data in a format that you can most easily access later -> simplify the look-up logic
    - Think about the steps it will take to look up your data from your algorithmn.
      - Ex: Straight-forward associations are good for look-up tables but complicated ones are not.  
    - Harness the power of data structures:
      - Ex: representing digits as characters instead of Integers makes it easier to work with bc then you get all the String methods

(4) Using The Right Abstractions:
  - Don't try to walk through a wall: always break down into smaller problems by building abstractions
  - If you can't express your abstraction in 1-2 lines, it's too complicated and you need to raise your abstraction
    - Create helper methods/functions
    - Push detailed steps to methods/functions

Interview Tips:
  - Communicate everything
  - De-risk: worst case scenario is not solving the right problem
  - Entire point of over-preparation before soding is to make sure you understand the problem aka de-risking
  - De-bug: avoid letting bugs compound by running code often and debugging locally
  - Manage your energy: solve the difficult part of the problem early on. The understanding is the hard part. Writing code is the easy thing:
    - Find the hardest part: tackle that first. Then chill!
