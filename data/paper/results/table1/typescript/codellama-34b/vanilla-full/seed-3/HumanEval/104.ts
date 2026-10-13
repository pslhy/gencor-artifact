function unique_digits(x: number[]): number[] {
  const result: number[] = [];
  for (const num of x) {
    if (hasNoEvenDigit(num)) {
      result.push(num);
    }
  }
  return result.sort((a, b) => a - b);
}

function hasNoEvenDigit(num: number): boolean {
  while (num > 0) {
    if (num % 10 % 2 === 0) {
      return false;
    }
    num = Math.floor(num / 10);
  }
  return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of positive integers x. return a sorted array of all
//     elements that hasn't any even digit.
//     Note: Returned array should be sorted in increasing order.
//     For example:
//     >>> unique_digits([15, 33, 1422, 1])
//     [1, 15, 33]
//     >>> unique_digits([152, 323, 1422, 10])
//     []
