function Find_Max(lst: any[][]): any[] {
  if (lst.length === 0) {
    return null;
  }
  let max = lst[0];
  for (let i = 1; i < lst.length; i++) {
    if (lst[i].length > max.length) {
      max = lst[i];
    }
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.
