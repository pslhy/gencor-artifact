function Find_Max_Length(lst: number[][]): number {
  let maxLength = 0

  for (let i = 0; i < lst.length; i++) {
    let currLength = 0

    for (let j = 0; j < lst[i].length; j++) {
      if (lst[i][j] == 1) {
        currLength++
      } else {
        if (currLength > maxLength) {
          maxLength = currLength
        }
        currLength = 0
      }
    }

    if (currLength > maxLength) {
      maxLength = currLength
    }
  }

  return maxLength
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest subarrays.
