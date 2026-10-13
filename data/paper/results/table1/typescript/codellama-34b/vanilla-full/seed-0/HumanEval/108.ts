function count_nums(arr: number[]): number {
  return arr.filter(num => {
    const absNum = Math.abs(num);
    let sum = 0;
    while (absNum > 0) {
      sum += absNum % 10;
      absNum = Math.floor(absNum / 10);
    }
    return sum > 0;
  }).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function count_nums which takes an array of integers and returns
//     the number of elements which has a sum of digits > 0.
//     If a number is negative, then its first signed digit will be negative:
//     e.g. -123 has signed digits -1, 2, and 3.
//     >>> count_nums([])
//     0
//     >>> count_nums([-1, 11, -11])
//     1
//     >>> count_nums([1, 1, 2])
//     3
