function return_sum(dict: {[key: string]: number}): number {
  return Object.values(dict).sum();
}

const test_dict = {a: 1, b: 5, c: 9, d: 4};
const expected_sum = 19; // 1 + 5 + 9 + 4

console.log(return_sum(test_dict) == expected_sum); // Output: true


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write function to find the sum of all items in the given object.
