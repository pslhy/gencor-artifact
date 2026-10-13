function min_Swaps(str1: string, str2: string): any {
  const numSwaps: any = 0;
  const len: any = str1.length;

  if (str1.length !== str2.length) {
      return -1;
  }

  for (let i: any = 0; i < len; i++) {
      if (str1[i] !== str2[i]) {
          str1 = str1.substr(0, i) + str2[i] + str1.substr(i + 1);
          numSwaps++;
          i--;
      }
  }

  return numSwaps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
