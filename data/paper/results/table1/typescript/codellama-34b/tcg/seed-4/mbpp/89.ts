function closest_num(N: number): number {
   if (N == 1) {
       return 0;
   }
   let num = 10 ** Math.floor(Math.log10(N));
   while (num >= 10) {
       if (N < num) {
           return num;
       }
       num = num / 10;
   }
   return 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.