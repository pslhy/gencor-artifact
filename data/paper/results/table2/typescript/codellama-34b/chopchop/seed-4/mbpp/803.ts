
function is_perfect_square(n: number): boolean {
   if (n == 1) {
       return true
  
   // Iterating for all values till square root of n
  
   // Checking if n is a perfect power square 
  
   // If no such value is found result is false 
      
   // Returning true if value is present else false 
      
   // If n is a perfect square, print it is a perfect
       
   // If not, print isn't a perfect
   
   // returning the value
     
     
     
   // Testing the above function 
   
   // For numbers less than 1, it won't be a perfect square 
   // For all other numbers, the numbers starting from 
   // 1*1=1, 2*2=4, 3*3=9,
   // 4*4=16, 5*5=25 and so on. 
   
   // If we run the program, it will give us the expected result 
   // according to the values of n.
  
     
     
   // Input:
  //Enter the number to be checked if it is a perfect vquare: 49
  
   // Output:
  //49 Isn't a perfect square
   
   // Input:
  // Enter the number to be checked if it is a perfect square: 16
   // Output:
 // 16 is a perfect square
  // 4
 
 
 // Input:
 // Enter the number to be checked if it is a perfect square: 25
 // Output:
 //25 is a perfect square
 //5
 
  // Input:
 // Enter the number to be checked if it is a perfect square: 1
 // Output:
 //1 is a perfect square
 //1
 
 // Input:
 // Enter the number to be checked if it is a perfect square: 10
 // Output:
 //10 isn't a perfect square
 //0
 
  // Input:
 // Enter the number to be checked if it is a perfect square: 11
 // Output:
 //11 isn't a perfect square
 //0
 
 
  // Input:
 // Enter the number to be checked if it is a perfect square: 100
 // Output:
 //100 isn't a perfect square
 //0
 
 
  
     
     
   // Testing the above function 
   // For numbers less than 1, it won't be a perfect 
   // square check for all other numbers.

  
  
     
   // If we run the program it return the true false value 
   // according to the values of n. 
    
   // For e.g. if the input number is 16, it will print 16 
   // is a perfect square, and 4.

  
    
     
     
   // If we put the input number as 1, it will print 1 is 
    // a perfect square, and 1.
  
    
     
   // If we put the input number as 10, it will print 10 isn't 
    // a perfect square, and 0.
   
   
  
   // If we put the input number as 11, it will print 11 isn't a 
   // perfect square, and 0.
   
   
   // If we put the input number as 100, it will print 100 isn't a perfect
   // square, and 0.

   
  
  
   
// This is a O(√n) solution as we are iterating till square root of n. 

// A simpler solution can be found by just checking whether the square root of n is an integer or not.


// But the above solution will be optimal and best as it will not work if

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
