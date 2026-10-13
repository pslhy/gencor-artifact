function find_Rotations(str: string): number {
  if(str.length <= 1){
    return 0;
  }
  for(let i = str.length - 1; i >= 0; i--){
    if(str[i] === str[i - 1]){
      return str.length - i;
    }
  }
  return 0
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
