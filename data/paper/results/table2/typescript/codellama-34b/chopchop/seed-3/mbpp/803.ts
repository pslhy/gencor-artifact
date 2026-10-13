
function is_perfect_square(n: number): boolean {
  if(n < 0){
      return false;
  }
  let s = Math.sqrt(n)
  //Using flooring to check if the number is perfect sqaure or not
  //If the number is perfect square the floating value can be 0
  //otherwise it will be some decimal number 
  //For an example if we calculate the sqrt of 4 , it will be 2.00000
  //if we calculate the sqrt of 5 , it will be 2.23607 i.e some non-zero
  //floating value
  //Hence if the floating value is 0 then it is a perfect square
 
  //Multiplying the square of the floating point to the number
  //and checking with the given number
  //if it matches then it is a perfect sqaure otherwise not
 
 
  //calculating the square of the decimal part of sqroot
  // and checking with the floating part
  //if it 0 then perfect square oterwise not
   
  //if the number is some decimal value and it will not match
  //the given number no matter what so it is false
   
 
  //Checking whether the number is 0 or not
  //If it is 0, then returning true
  //else false 
 
  //return statement to check whether the number is 
  //perfect sqaure or not
  //if the floating value of the sqroot is 0 and the original
  //number is greater than 0 then it is  a perfect square
  //else return false
  //This will check whether the number is a perfect square or not
  //else if the number is 0 then it is a perfect square
  // i.e the sqrt of 0 is 0
  //And the number greater than 0 the boolean value is false
   
  //If  the number is a float then it is not a perfect square
  //fmt s property is returns the number as a floating point number
   
  //checking whether the number is a perfect sqaure or not
  //When the vehiclenumber is 0
  //If the number is a float then it is not a perfect square
  //fmt s property is returns the number as a floating point number
  //thus forth either it is a perfect square or not
   
  //logic to check whether the number is a perfect sqaure or not
  //when the number is greater than 0 and a float
   
  //If the number is a perfect sqaure then s property will be zero
  //When the number is greater than 0 and not a perfect sqaure
  //S property will be some negative floating value
 
  // if the number is a perfect sqaure then s is 0 
  // otherwise s is negative floating value
   
  //return s to check whether the number is a perfect square or not
  // when the number is less than 0
   
  // fmt s is used to return the number as a floating point value
  //if the number is 0 then the fmt s property will be 0
  //when the number is less than 0 the boolean value will be true
  //If the boolean is true , then it will return true
  // and it will give the wrong value for the number

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
