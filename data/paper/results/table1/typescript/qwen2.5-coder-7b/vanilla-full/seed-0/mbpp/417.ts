function group_tuples(Input: string[][]): string[][] { 
  Input.sort((a, b) => a.length - b.length);
  let m = Input[0].map((_, i) => Input.map(x => x[i]));
  return m.filter(ele => ele.every(val => val === ele[0]));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
