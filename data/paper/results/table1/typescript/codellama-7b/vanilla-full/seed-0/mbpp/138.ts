function is_Sum_Of_Powers_Of_Two(n: number): boolean {
  if (n === 1) {
    return true;
  }
  if (n === 0) {
    return false;
  }

  let count = 0;
  let power = 2;

  while (n > 0) {
    if (n % power === 0) {
      count++;
    }
    if (count > 1) {
      return false;
    }
    power *= 2;
    n = Math.floor(n / power);
  }

  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
