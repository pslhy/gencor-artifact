function find_length(string: string): number {
    let countZeroes = 0;
    let countOnes = 0;
  
    for (const character of string) {
      if (character == '0') {
        ++countZeroes
      } else {
        ++countOnes
      }
  
      const temp = Math.max(countZeroes, countOnes);
      countZeroes = temp;
      countOnes = temp;
    }
  
    return countZeroes > countOnes ? countZeroes - countOnes : countOnes - countZeroes
  }
 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
