
function is_nonagonal(n: number): number {
  if (n == 1) {
    return 1;
  }
  let i = 1;
  let val: number = 1;
  while (i <= n) {
    let s = 0;
    for (let j = 1; j <= i; j++) {
      s += j;
    }
    if (s == i * (i + 1) / 2) {
      val = s;
      i++;
    } else {
      i++;
    }
  }
  return val;
}

function nth_nonagonal(n: number) : number {
  // Initialize a variable to store the result
  let result: number = 0;
  // Loop through the numbers from 1 to n
  for (let i = 1; i <=

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth nonagonal number.
