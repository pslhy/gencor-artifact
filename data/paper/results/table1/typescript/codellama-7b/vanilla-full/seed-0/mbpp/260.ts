function newman_prime(n: number): number {
  if (n === 1) {
    return 1;
  }
  
  let i = 1;
  let j = 1;
  let k = 1;
  
  while (j < n) {
    i = i * 3 + 1;
    j = Math.floor(Math.log(i) / Math.log(2));
    k++;
  }
  
  return i;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth newman–shanks–williams prime number.
