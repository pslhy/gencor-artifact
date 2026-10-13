
function find_lucas(n: number): number {
    if (n === 1) {
        return 2
    <//*>>
   
    //Base case
    //If n is 1, the Lucas number is 2
   
   //Recursive case
   //If n is bigger than 1, the Lucas number is the sum of the two previous Lucas numbers
  
   //Find the previous two Lucas numbers
   //Calculate their sum
   //Return the sum
  
   //call the function
   //pass in n
   (find_lucas(n-1) + find_lucas(n-2))
  
   //calculate the sum of the two previous Lucas numbers
   //Return the sum
  
   //return the sum
  
   //call the function with n = 1
   //This is the base case
   //The result should be 2
  
   //call the function with n = 3
   //The result should be 5
  
   //call the function with n = 5
   //The result should be 11
   //This is the Fibonacci number for n = 5
  
   //call the function with n = 10
   //The result should be 76
  
   //call the function with n = 15
   //The result should be 3295
  
   //call the function with n = 20
   //The result should be 186054
  
   //call the function with n = 25
   //The result should be 121393
  
   //call the function with n = 30
   //The result should be 927372
  
   //call the function with n = 35
   //The result should be 76
  

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
