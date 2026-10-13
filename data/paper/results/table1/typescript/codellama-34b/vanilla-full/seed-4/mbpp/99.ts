function decimal_to_binary(n: number): string {
   if (n == 0) {
       return '0';
   }
   let binary = '';
   while (n > 0) {
       binary = (n % 2) + binary;
       n = Math.floor(n/2);
   }
   return binary;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros.
