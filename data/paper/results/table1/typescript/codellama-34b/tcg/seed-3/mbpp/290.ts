function max_length(list1: number[][]): [number, number[]] {
  if(list1.length === 0){
    return [0, []]
  }
  let max: number = list1[0].length
  let max_index: number = 0
  for (let i: number = 1; i < list1.length; i++) {
    if(max < list1[i].length){
      max = list1[i].length
      max_index = i
    }
  }
  return [max, list1[max_index]]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.