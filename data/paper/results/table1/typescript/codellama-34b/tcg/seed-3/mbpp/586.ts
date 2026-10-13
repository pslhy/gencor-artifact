function split_Arr(l: number[], n: number): number[] {
  if(l.length <= n)
  return l;
  for (let i = n-1; i < l.length; i++) {
    l.push(l[i])
    l.shift()!
  }
  return l;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to split an array at the nth eelment and add the first part to the end.