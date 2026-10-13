function add_pairwise(test_tup: [number, number, number, number, number]): [number, number, number, number] {
  let sum1 = 0
  let sum2 = 0
  let sum3 = 0
  let sum4 = 0

  sum1 = test_tup[0] + test_tup[1]
  sum2 = test_tup[1] + test_tup[2]
  sum3 = test_tup[2] + test_tup[3]
  sum4 = test_tup[3] + test_tup[4]

  return [sum1, sum2, sum3, sum4]
}

const result = add_pairwise([10, 20, 30, 40, 50])
console.log(result) // Output: [30, 50, 70, 90]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.
