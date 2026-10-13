function Find_Min(lst: any[][]): any[] {
  if(lst.length == 0)
    throw new Error("No list to process.");
  let min_len = lst[0].length;
  let min_sub = lst[0];
  for (let i = 1; i < lst.length; i++) {
    if (lst[i].length < min_len) {
      min_len = lst[i].length;
      min_sub = lst[i];
    }
  }
  return min_sub;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.
