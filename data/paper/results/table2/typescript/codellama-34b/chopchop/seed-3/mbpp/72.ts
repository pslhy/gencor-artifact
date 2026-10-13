
function dif_Square(n: number): boolean {
  if(n < 0){
      return false;
  }
  let s = Math.sqrt(n)
  // If the number is perfect square
  // For example, 0, 1, 4, 9, 16 etc.
  // then number = number^2 or
  // (number - 1)^2 +1 when the number is not perfectly divisible by 2.
  // All such numbers are represented as 
  // the difference of two squares
  
  // if n is not a perfect square
  // for the number to be represented 
  // as difference of two squares
  // it has to be in the form of 
  // 4k+1, where k is an integer.
  // because the factors of the sum and the difference
  // of two squares differ by the square root of the sum.
  // e.g. if n is the number then 
  // n=a^2-b^2; 
  // a+b= sqrt(n) and a-b = sqrt(n);
  // the value of a+b should be an integer.
  
  // if the number is not even
  // then it is not possible to represent it
  // as the difference of two squares.
  // e.g. 3 = 2^2 - 1^2 is not valid
  // because 2+1 is not an integer.
  
  // Grid problem.
  
  // remove duplicates from the array
  // a is the element/celebrity
  // squaring each element of the array
  // Checking the number n is greater than the n-1  
  // whether it contains two squares or not
  // if present push it in a new array
  // else return false
 
  // Write an algorithm to find if a given number can be expressed as difference of two squares of two integers.
  // Example: (3 - 1 2) = (4 - 1 3) = (9 - 4 5) = (16 - 9 7), So 3 can be expressed as
  // difference of two squares (4 - 1 and 9 - 4).
  
  // comparing two strings
  // and then check for the existence 
  // of duplicates
  // Using filter to remove duplicates by comparing with itself
  
  // Mathematical solution 
  // for checking the whether the given number is the sum of the two squares
  // 1) Find the square root of the given number.
  // 2) Check if the square root is a whole number.
  // if it is a whole number then it is always representable as sum of the two squares
  // if not, then check if the number is of the form (4k+1) where k is an integer.
  // if it is not representable as (4k+1) then it is not representable as the difference of two squares
  
  // return s;
  // if (s === Math.floor(s)){
  //   return true
  // }
  // else if((n === 4 * k + 1) where k is an integer){
  //   return true
  // }
  // else{
  //   return false
  // }
 
  // Algorithm to determine the numbers that can be represented as the difference of two squares.
  
  // input data
  
  // start main program
  // output data
  
  // Sort the input data in order to remove duplicates

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
