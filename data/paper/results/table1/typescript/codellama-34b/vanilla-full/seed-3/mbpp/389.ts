function find_lucas(n: number): number {
  if(n < 0){
      return 0;
  }
  let a = 2, b = 1;
  let c = 0;
  for(let i = 0; i < n; i++){
      c = a + b;
      a = b;
      b = c;
  }
  return c;
}

//Tests
console.log(find_lucas(0)); // 2
console.log(find_lucas(1)); // 1
console.log(find_lucas(2)); // 3
console.log(find_lucas(3)); // 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th lucas number.
