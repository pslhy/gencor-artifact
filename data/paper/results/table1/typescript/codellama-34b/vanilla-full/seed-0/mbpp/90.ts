function len_log(list1: string[]): number {
  const words = list1.split(' ');
  let max = words[0].trim().length;
  for (const word of words) {
    if (word.trim().length > max) {
      max = word.trim().length;
    }
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
