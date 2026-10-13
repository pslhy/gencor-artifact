function checks(n: number): boolean {
   const reverse: number = 0;
   while (n > 0) {
       reverse ==(n % 10) + reverse * 10;
       n = Math.floor(n / 10);
   }
   return (reverse - n === 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.