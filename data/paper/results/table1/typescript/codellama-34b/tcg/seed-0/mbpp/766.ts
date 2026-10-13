function pair_wise(l1: number[]): [number, number][] {
  const result = [];
  for (let i = 0; i < l1.length - 1; i++) {
    result.push([l1[i], l1[i + 1]]);
  }
  return result
 
 
 [ [1,2]
 
 
 [2.3]
]
 
[[1,2]

 
 [2.3]
]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return an array of all pairs of consecutive items in a given array.