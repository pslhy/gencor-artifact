function find_star_num(n: number): number {
  if (n === 1) {
    return 2;
  }
  let num = 1;
  let count = 1;
  while (count < n) {
    num += Math.pow(2, count);
    count++;
  }
  return num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the n'th star number.
