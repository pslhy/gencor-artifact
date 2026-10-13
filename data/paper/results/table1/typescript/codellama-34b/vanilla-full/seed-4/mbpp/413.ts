function extract_nth_element(list1: [string, number, number][], n: number): any[] {
   if (list1.length === 0) {
       return [];
   }
   return list1.map((arr) => arr[n]);
}

const input = [["a", 1, 2], ["b", 3, 4], ["c", 5, 6]];
const output = extract_nth_element(input, 1);
console.log(output); // [1, 3, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract the nth element from a given array of arrays.
