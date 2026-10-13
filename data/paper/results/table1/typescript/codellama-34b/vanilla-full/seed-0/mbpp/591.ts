function swap_List(newList: number[]): number[] {
  const switch = newList[0]
  newList[0] = newList[newList.length - 1]
  newList[newList.length - 1] = switch
  return newList
}

const input = [1, 2, 3, 4, 5]
const output = swap_List(input)
console.log(output) // [5, 2, 3, 4, 1]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last elements in an array.
