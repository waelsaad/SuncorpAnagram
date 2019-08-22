Suncorp Code Challenge
========

This repository contains a simple app for Suncorp code challenge

The challenge contains is to write 2 functions:-

1- Write a function using the below function signatuer to verify if 2 strings are an Anagram or not. According to Wikipedia Anagram definition: An anagram is a word or phrase formed by rearranging the letters in another word or phrase. 

  function isAnagram(string word1, string word2) returns boolean

2- Write a function using the below function signatuer to  return the number of unique pairs in an array that have a difference of delta.

function uniquePairs(array[integer] numbers, integer delta) returns integer

---
# Installation

To install the dependencies
* Open a terminal and cd to the directory containing the Podfile
* If only required you may need to run the `carthage update --platform iOS` command

(For further details regarding Carthage installation see https://github.com/Carthage/Carthage)

The code compiles using Xcode version 10.2.1 (10E1001)  using Swift 5 
---
# Tasks Completed

# Anagram Checker
*  I created a simple UI for the Anagram checker :) I applied the MVVM design pattern.
*  Implemented validation for allowing only characters, space and deletion to be accepted by the user..
*  Integrated Quick and Nimble using Carthage
*  Researched popular anagram words to ensure I can handle edge cases
*  Implemented uniit tests using Quick and Nimble but also using XCTest
*  Implemented a number of uniit tests  using XCTest to handle anagrams with spaces

# Unique Pair Function

*  I created a function that works out the number of unique pairs with a difference of a given delta in an array
*  Implemented anumber of uniit tests using XCTest to ensure the output is correct
