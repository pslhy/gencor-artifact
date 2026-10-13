function all_unique(test_list: number[]): boolean {
  const unique_elements: Set<number> = new Set();
  for (const element of test_list) {
    if (unique_elements.has(element)) {
      return false;
    }
    unique_elements.add(element);
  }
  return true;
}

console.log(all_unique([1, 2, 3, 4, 5])); // Output: true
console.log(all_unique([1, 2, 3, 2, 5])); // Output: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if the elements of a given array are unique or not.
