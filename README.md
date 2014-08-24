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

4. Problem 4  
  Find the number of elements of a list.  
  Example in Haskell:  
  >Prelude> myLength [123, 456, 789]  
  >3  
  >Prelude> myLength "Hello, world!"  
  >13  

5. Problem 5  
  Reverse a list.  
  Example in Haskell:  
  >Prelude> myReverse "A man, a plan, a canal, panama!"  
  >"!amanap ,lanac a ,nalp a ,nam A"  
  >Prelude> myReverse [1,2,3,4]  
  >[4,3,2,1]  

6. Problem 6  
  Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).  
  Example in Haskell:  
  >Main> isPalindrome [1,2,3]  
  >False  
  >Main> isPalindrome "madamimadam"  
  >True  
  >Main> isPalindrome [1,2,4,8,16,8,4,2,1]  
  >True  

7. Problem 7  
  Flatten a nested list structure.  
  Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).  
  Example:  
  ```
  * (my-flatten '(a (b (c d) e)))  
  (A B C D E)  
  ```  
  Example in Haskell:  
  We have to define a new data type, because lists in Haskell are homogeneous.  
  ```
  data NestedList a = Elem a | List [NestedList a]  
  ```  
  >Main> flatten (Elem 5)  
  >[5]  
  >Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])  
  >[1,2,3,4,5]  
  >Main> flatten (List [])  
  >[]  

8. Problem 8  
  Eliminate consecutive duplicates of list elements.  
  If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.  
  Example:  
  ```
  * (compress '(a a a a b c c a a d e e e e))
  (A B C A D E)
  ```
  Example in Haskell:  
  >compress "aaaabccaadeeee"  
  >"abcade"  

