function count_reverse_pairs(test_list: string[]): number {
  let count: number = 0;
  for (let i = 0; i < test_list.length; i++) {
    for (let j = i + 1; j < test_list.length; j++) {
      if (test_list[i].split("").reverse().join("") === test_list[j]) {
        count++;
      }
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
