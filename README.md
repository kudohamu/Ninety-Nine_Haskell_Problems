My solutions of Ninety-Nine Haskell Problems
======

Reference:[Ninety-Nine Haskell Problems](http://www.haskell.org/haskellwiki/H-99:_Ninety-Nine_Haskell_Problems)  

1. Problem 1  
  a Find the last element of a list.  
  (Note that the Lisp transcription of this problem is incorrect.)  
  Example in Haskell:  
  >Prelude> myLast [1,2,3,4]  
  >4  
  >Prelude> myLast ['x','y','z']  
  >'z'  

2. Problem 2  
  Find the last but one element of a list.  
  (Note that the Lisp transcription of this problem is incorrect.)  
  Example in Haskell:  
  >Prelude> myButLast [1,2,3,4]  
  >3  
  >Prelude> myButLast ['a'..'z']  
  >'y'  

3. Problem 3  
  Find the K'th element of a list. The first element in the list is number 1.  
  Example:  
  ```
  * (element-at '(a b c d e) 3)   
  c  
  ```
  Example in Haskell:   
  >Prelude> elementAt [1,2,3] 2  
  >2  
  >Prelude> elementAt "haskell" 5  
  > 'e'  

