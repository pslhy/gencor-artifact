function sort_array(arr: number[]): number[] {
  const onesCount = new Map<number, number>();
  const arrWithOnesCount = arr.map((num) => {
    const numOnes = getOnesCount(num);
    onesCount.set(numOnes, (onesCount.get(numOnes) || 0) + 1);
    return { num, numOnes };
  });

  const result = arrWithOnesCount.sort((a, b) => {
    const aOnesCount = a.numOnes);
    const bOnesCount = b.numOnes;
    return aOnesCount - bOnesCount || a.num - b.num;
  });

  return result.map((o) => o.num);
}

function getOnesCount(num: number): number {
  const str = num.toString(2);
  let count = 0;
  for (let i = 0; i < str.length; i++) {
    if (str[i] === '1') {
      count++;
    }
  }
  return count;
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
