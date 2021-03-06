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

9. Problem 9  
  Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.  
  Example:  
  ```
  * (pack '(a a a a b c c a a d e e e e))  
  ((A A A A) (B) (C C) (A A) (D) (E E E E))  
  ```  
  Example in Haskell:  
  >Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']  
  >["aaaa","b","cc","aa","d","eeee"]  

10. Problem 10
  Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.  
  Example:  
  ```
  (encode '(a a a a b c c a a d e e e e))  
  ((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))  
  ```  
  Example in Haskell:  
  >encode "aaaabccaadeeee"  
  >[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]  

11. Problem 11
  Modified run-length encoding.  
  Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.  
  Example:  
  ```
  * (encode-modified '(a a a a b c c a a d e e e e))  
  ((4 A) B (2 C) (2 A) D (4 E))  
  ```  
  Example in Haskell:  
  >P11> encodeModified "aaaabccaadeeee"  
  >[Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']  

12. Problem 12  
  Decode a run-length encoded list.  
  Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.  
  Example in Haskell:  
  >P12> decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']  
  >"aaaabccaadeeee"  

13. Problem 13  
  Run-length encoding of a list (direct solution).  
  Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.  
  Example:  
  ```
  * (encode-direct '(a a a a b c c a a d e e e e))  
  ((4 A) B (2 C) (2 A) D (4 E))  
  ```  
  Example in Haskell:  
  >P13> encodeDirect "aaaabccaadeeee"  
  >[Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']  

14. Problem 14  
  Duplicate the elements of a list.  
  Example:  
  ```
  * (dupli '(a b c c d))  
  (A A B B C C C C D D)  
  ```  
  Example in Haskell:  
  >dupli [1, 2, 3]  
  [1,1,2,2,3,3]  

15. Problem 15  
  Replicate the elements of a list a given number of times.  
  Example:  
  ```
  * (repli '(a b c) 3)  
  (A A A B B B C C C)  
  ```  
  Example in Haskell:  
  >repli "abc" 3  
  >"aaabbbccc"  

16. Problem 16
  Drop every N'th element from a list.  
  Example:  
  ```
  * (drop '(a b c d e f g h i k) 3)  
  (A B D E G H K)  
  ```  
  Example in Haskell:  
  >Main> dropEvery "abcdefghik" 3  
  >"abdeghk"  

17. Problem 17  
  Split a list into two parts; the length of the first part is given.  
  Do not use any predefined predicates.  
  Example:  
  ```
  * (split '(a b c d e f g h i k) 3)
  ( (A B C) (D E F G H I K))  
  ```  
  Example in Haskell:  
  >Main> split "abcdefghik" 3  
  >("abc", "defghik")  

18. Problem 18  
  Extract a slice from a list.  
  Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.  
  Example:  
  ```
  (slice '(a b c d e f g h i k) 3 7)  
  (C D E F G)  
  ```  
  Example in Haskell:  
  >Main> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7  
  >"cdefg"  

19. Problem 19  
  Rotate a list N places to the left.  
  Hint: Use the predefined functions length and (++).  
  Examples:  
  ```
  (rotate '(a b c d e f g h) 3)  
  (D E F G H A B C)  

  (rotate '(a b c d e f g h) -2)  
  (G H A B C D E F)  
  ```  
  Examples in Haskell:  
  >Main> rotate ['a','b','c','d','e','f','g','h'] 3  
  >"defghabc"  
  >Main> rotate \['a','b','c','d','e','f','g','h'] (-2)  
  "ghabcdef"  

20. Problem 20  
  Remove the K'th element from a list.  
  Example in Prolog:  
  ```
  ?- remove_at(X,[a,b,c,d],2,R).  
  X = b  
  R = [a,c,d]  
  ```  
  Example in Lisp:  
  >(remove-at '(a b c d) 2)  
  >(A C D)  

  (Note that this only returns the residue list, while the Prolog version also returns the deleted element.)  
  Example in Haskell:  
  >Main> removeAt 2 "abcd"  
  >('b',"acd")  

21. Problem 21  
  insert an element at a given position into a list.  
  Example:  
  ```
  (insert-at 'alfa '(a b c d) 2)  
  (A ALFA B C D)  
  ```  
  Example in Haskell:  
  >P21> insertAt 'X' "abcd" 2  
  >"aXbcd"  

22. Problem 22  
  Create a list containing all integers within a given range.  
  Example:  
  ```
  (range 4 9)  
  (4 5 6 7 8 9)  
  ```  
  
  Example in Haskell:  
  >Prelude> range 4 9  
  >[4,5,6,7,8,9]  

23. Problem 23
  Extract a given number of randomly selected elements from a list.

  Example:
  ```
  * (rnd-select '(a b c d e f g h) 3)
  (E D A)
  ```

  Example in Haskell:
  >Prelude System.Random>rnd_select "abcdefgh" 3 >>= putStrLn
  >eda

24. Problem 24
  Lotto: Draw N different random numbers from the set 1..M.

  Example:
  ```
  * (diff-select 6 49)
  (23 1 17 33 21 37)
  ```

  Example in Haskell:
  >Prelude System.Random>diff_select 6 49
  >Prelude System.Random>[23,1,17,33,21,37]
