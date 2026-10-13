function Find_Min(lst: any[][]): any[] {
  if (lst.length === 0) {
    throw new Error("List is empty");
  }
  if (lst[0].length === 0) {
    throw new Error("Sublist is empty");
  }

  let minLength = lst[0].length;
  let minSubList = lst[0];

  for (let i = 1; i < lst.length; i++) {
    if (lst[i].length < minLength) {
      minLength = lst[i].length;
      minSubList = lst[i];
    }
  }

  return minSubList;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.
