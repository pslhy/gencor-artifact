function Find_Min_Length(lst: number[][]): number {
  if (lst.length === 0) {
    return 0;
  }

  let minLength = lst[0].length;

  for (let i = 1; i < lst.length; i++) {
    const currentLength = lst[i].length;
    if (currentLength < minLength) {
      minLength = currentLength;
    }
  }

  return minLength;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the smallest array in an array of arrays.
