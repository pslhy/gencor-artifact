
function divisor(n: number): number {
  if(n < 0){
     n = -n;
  }
  let count = 0;
  for(let i = 1; i<= Math.sqrt(n) + 1; i++){
     if(n % i === 0){
        count += 2;
     }
  }
  return count
 
//Modify the function above  to find the number of divisors of an integer n, excluding the number itself.

 

//Another possible implementation using recursion




 

// An implementation using closure

 
//Another possible implementation using singleton



 



//Another possible implementation using union find















































































































































































// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of divisors of a given integer.
