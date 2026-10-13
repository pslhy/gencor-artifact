function sort_counter(dict1: {[key: string]: number}): [string, number][] {
   const items: [string, number][] = [];
   for (let key in dict1) {
       items.push([key, dict1[key]]);
   }
   return items.sort((a, b) => b[1] - a[1]);
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an object by value.
