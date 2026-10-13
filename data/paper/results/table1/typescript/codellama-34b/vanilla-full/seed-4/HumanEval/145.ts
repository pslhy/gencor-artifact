function order_by_points(nums: number[]): number[] {
  const points: Record<number, number[]> = {};
  let result: number[] = [];

  nums.forEach((num: number): void => {
    const sum: number = getDigitSum(num);
    if (!(sum in points)) {
      points[sum] = [];
    }
    points[sum].push(num);
  });

  Object.keys(points).sort((a: string, b: string) => Number(a) - Number(b)).forEach(
    (sum: string): void => {
      result = result.concat(points[sum].sort((a: number, b: number) => a - b));
    }
  );

  return result;
}

function getDigitSum(num: number): number {
  let sum = 0;
  while (num > 0) {
    sum += num % 10;
    num = Math.floor(num / 10);
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which sorts the given array of integers
//     in ascending order according to the sum of their digits.
//     Note: if there are several items with similar sum of their digits,
//     order them based on their index in original array.
//     For example:
//     >>> order_by_points([1, 11, -1, -11, -12])
//     [-1, -11, 1, -12, 11]
//     >>> order_by_points([])
//     []
