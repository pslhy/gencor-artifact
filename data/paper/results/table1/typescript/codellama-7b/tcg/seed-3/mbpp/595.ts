function min_Swaps(str1: string, str2: string): any {
  if(str1.length != str2.length) {
    throw new Error('Length of strings not matching');
  }
  let count = 0;
  for (let i = 0; i < str1.length; i++) {
    if(str1.charAt(i) !== str2.charAt(i) && str1.charAt(i) === '1') {
      count++;
    }
  }
  return count;
};


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.