function find_Rotations(str: string): number {
  if(str.length <= 1)
    return 0;
  let count = 0;
  while(str !== str[str.length-1]+str.slice(0, str.length-1)) {
    str = str.slice(1, str.length-1) + str[0];
    count++;
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
