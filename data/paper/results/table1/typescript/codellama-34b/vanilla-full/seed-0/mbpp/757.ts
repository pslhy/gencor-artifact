function count_reverse_pairs(test_list: string[]): number {
  const reverse_dict: Record<string, number> = {};
  let count = 0;

  for (const test_string of test_list) {
    const reversed_string = test_string.split("").reverse().join("");
    if (reversed_string in reverse_dict) {
      count += reverse_dict[reversed_string];
    }
    if (test_string in reverse_dict) {
      count++;
    }
    reverse_dict[test_string] = 1;
  }

  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
