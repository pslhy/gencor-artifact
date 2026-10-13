
function next_Perfect_Square(N: number): number {
   if(N < 0){
       return -1;
   }
   
   let x = Math.sqrt(N);
  
   if(x % 1 == 0){
       return x + 1;
   }
   else{
       let y = Math.sqrt(N + 1);
       return y;
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the next perfect square greater than a given number.
