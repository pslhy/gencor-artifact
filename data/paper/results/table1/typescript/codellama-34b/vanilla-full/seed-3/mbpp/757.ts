function count_reverse_pairs(test_list: string[]): number {
  let count = 0;
  test_list.forEach((pair, i) => {
    test_list.slice(i+1).forEach((str) => {
      if (pair.split("").reverse().join("") === str) {
        count++;
      }
    });
  });
  return count;
}

/* Explanation:
We use two nested loops to iterate over the test_list. The outer loop takes each element, and the inner loop takes all the elements after the current one (using slice(i+1)) and checks if they are a reverse of the current one. If they are, we increment the count by one. Finally, we return the count.
*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
