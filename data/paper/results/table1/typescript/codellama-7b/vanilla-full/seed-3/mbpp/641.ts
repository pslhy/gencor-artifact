function is_nonagonal(n: number): number {
  if(n < 1) {
    return false;
  }
  let sum = 0;
  for(let i = 1; i <= n; i++) {
    sum += i * (i + 1);
  }
  return sum === n;
}

function find_nth_nonagonal(n: number): number{
  for(let i = 1; i <= n; i++) {
    if(is_nonagonal(i)) {
      return i;
    }
  }
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
