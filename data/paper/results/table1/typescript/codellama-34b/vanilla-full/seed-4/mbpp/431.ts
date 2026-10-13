function common_element(list1: any[], list2: any[]): boolean | undefined {
   if (list1.some(x => list2.includes(x))) {
      return true;
   }
   return false;
}

// Usage example:
console.log(common_element([1, 2, 3], [4, 5, 6])); // Output: false
console.log(common_element([1, 2, 3], [4, 5, 3])); // Output: true
console.log(common_element([1, 2, 3], [3, 4, 5])); // Output: true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes two arrays and returns true if they have at least one common element.
