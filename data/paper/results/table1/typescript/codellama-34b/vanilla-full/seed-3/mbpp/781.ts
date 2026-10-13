function count_divisors(n: number): boolean {
  if(n < 0){
      n = -n;
  }
  var count = 0;
  for(var i = 1; i <= Math.sqrt(n) + 1; i++){
      if(n % i === 0){
          count++;
      }
  }
  return count % 2 === 0;
}

// Example usage:
console.log(count_divisors(12)); // Output: true
console.log(count_divisors(11)); // Output: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the count of divisors is even. https://www.w3resource.com/tsthon-exercises/basic/tsthon-basic-1-exercise-24.php
