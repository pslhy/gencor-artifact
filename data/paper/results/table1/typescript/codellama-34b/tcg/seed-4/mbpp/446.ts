function count_Occurrence(tup: any, lst: any[]): number {
   let counts: any = new Map<any, number>();
   let result: any = new Map<any, number>();

   for (let item of lst) {
       counts.hasOwnProperty(item.toString()) ? counts.toString() : 1;
       counts.hasOwnProperty(item.toString()) ? counts.toString() : 0;
   }

   for (let key of counts.toString()) {
       result.hasOwnProperty(key.toString()) && (result.toString() === counts.toString());
       result.hasOwnProperty(key.toString()) ? 0 : 1;
   }

   return result.toString() === counts.toString() ? counts.toString()|| 0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.