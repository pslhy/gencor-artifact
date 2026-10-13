
function sum_in_range(l: number, r: number): number {
  if(l >= 0 && l < r){
    
    for (let i = r-1; i < r; i++) {
      if (i % 2 === 1) {
        sum_in_range(i, r)
     
     
    //SUAM*/
    //Write your code here
    

    //W#Refresh

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd natural numbers within the range l and r.
