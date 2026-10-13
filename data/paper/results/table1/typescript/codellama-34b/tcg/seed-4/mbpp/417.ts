function group_tuples(Input: string[][]): string[][] {
   let result: string[][] = [];
   for (let i = 0; i < Input.length; i++) {
       for (let j = i + 1; j < Input.length; j++) {
           const tuple_a = Input[i].sort();
           const tuple_b = Input[j].sort();
           const common_elements = tuple_a.filter(element => tuple_b.includes(element));
           if (common_elements.length > 0) {
               result.push([common_elements.join(',')]);
           }
       }
   }
   return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.