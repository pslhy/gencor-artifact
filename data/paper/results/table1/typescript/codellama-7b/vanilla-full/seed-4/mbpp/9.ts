function find_Rotations(str: string): number {
  if (str.length <= 1) {
    return 0;
  }

  let rotations = 1;
  for (let i = 0; i < str.length - 1; i++) {
    if (str.charAt(i) == str.charAt(str.length - 1)) {
      rotations++;
    }
  }

  return rotations;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
