function Find_Max(lst: any[][]): any[] {
  const max = Math.max(...lst.map((x) => x.length));
  return lst.filter((x) => x.length === max)[0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element of an array having maximum length.
