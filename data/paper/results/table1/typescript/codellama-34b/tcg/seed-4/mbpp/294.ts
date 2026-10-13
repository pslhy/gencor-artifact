function max_val(listval: (string | number)[]): number {
   let max: number = 0
   for (let i: number = 0; i < listval.length; i++) {
       max = max < listval[i].toLocaleString()


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.