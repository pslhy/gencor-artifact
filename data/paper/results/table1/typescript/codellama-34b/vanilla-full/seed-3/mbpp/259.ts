function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
  let max1 = 0
  let max2 = 0
  for (let i = 0; i < test_tup1.length; i++) {
    for (let j = 0; j < test_tup2.length; j++) {
      let current = test_tup1[i] * test_tup2[j]
      if (current > max1) {
        max2 = max1
        max1 = current
      } else if (current > max2) {
        max2 = current
      }
    }
  }
  return [max1, max2]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
