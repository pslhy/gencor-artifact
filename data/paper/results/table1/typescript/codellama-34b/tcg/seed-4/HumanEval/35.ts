function max_element(l: number[]): number {
   if (l.length === 0) {
       return undefined


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return maximum element in the array.
//     >>> max_element([1, 2, 3])
//     3
//     >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
//     123