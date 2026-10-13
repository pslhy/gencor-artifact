function is_Sum_Of_Powers_Of_Two(n: number): boolean {
  if (n === 0) {
    return false;
  }

  let num = n;
  let pow = 0;

  while (num > 0) {
    let temp = num % 2;
    num = num >> 1;
    if (temp === 1) {
      pow++;
    }
  }

  return pow >= 2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
