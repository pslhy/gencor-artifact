function check_none(test_tup: any): boolean {
   if test_tup.includes(undefined) || test_tup.includes(null)
      return true;
   return false;
}

console.log(check_none([1, 2, 3])); // false
console.log(check_none([1, 2, 3, undefined])); // true
console.log(check_none([1, 2, 3, null])); // true
console.log(check_none([1, 2, 3, NaN])); // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array has any none value or not.
