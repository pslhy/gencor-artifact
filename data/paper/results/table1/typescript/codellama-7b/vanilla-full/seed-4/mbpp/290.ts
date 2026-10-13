function max_length(list1: number[][]): [number, number[]] {
  let maxLength = 0
  let maxArray: number[] = []

  for (const array of list1) {
    if (array.length > maxLength) {
      maxLength = array.length
      maxArray = array
    }
  }

  return [maxLength, maxArray]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.
