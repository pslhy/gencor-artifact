
function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
  const tuple1: number[] = test_tup1[0];
  const tuple2: number[] = test_tup2[0];

  const max_index: number = tuple1.length - 1;
  const max1: number = Math.max(...tuple1);
  const max2: number = Math.max(...tuple2);

  if (max1 > max2) {
    return tuple1.slice(0, max_index + 1).concat([max1 + max2]) as unknown as number[](
      [tuple1.slice(0, max_index) as unknown as number[], max1 + max2]
    );
  } else {
    return tuple2.slice(0, max_index + 1).concat([max1 + max2]) as unknown as number[](
      [tuple2.slice(0, max_index) as unknown as number[], max1 + max2]
    );
  }
}

const test_tuples = [[1, 2, 3], [4, 2, 1]];
const result = maximize_elements(test_tuples[0] as unknown as number[][], test_tuples[1] as unknown as number[][]);
console.log(result);

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
