function bell_Number(n: number): number {
   if (n == 0) {
       return 1;
   }
   let bell = 0;
   for (let k = 0; k < n; k++) {
       bell += Math.pow(n - 1, k) * Math.log(n - 1);
   }
   return bell;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
