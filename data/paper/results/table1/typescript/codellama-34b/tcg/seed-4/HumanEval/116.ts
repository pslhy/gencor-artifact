function sort_array(arr: number[]): number[] {
  const onesCount = new Map<number, number>();
  const arrWithOnesCount = arr.map((num) => {
    const numOnes = num.toString(2).match(/1/g)!.length;
    onesCount.set(num, numOnes);
    return [num, numOnes];
  });
  return arrWithOnesCount.sort((a, b) => {
    if (a[1] === b[1]) {
      return a[0] - b[0];
    } else {
      return a[1] - b[1];
    }
  }).map(numOnesCount => numOnesCount[0]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     In this Kata, you have to sort an array of non-negative integers according to
//     number of ones in their binary representation in ascending order.
//     For similar number of ones, sort based on decimal value.
//     It must be implemented like this:
//     >>> sort_array([1, 5, 2, 3, 4])
//     [1, 2, 3, 4, 5]
//     >>> sort_array([-2, -3, -4, -5, -6])
//     [-6, -5, -4, -3, -2]
//     >>> sort_array([1, 0, 2, 3, 4])
//     [0, 1, 2, 3, 4]