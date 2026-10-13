function armstrong_number(number: number): boolean {
   let digits: number[] = [];
   for (let i: number = 0; i < 10; i++) {
      digits.push(Math.pow(number, 3));
   }
   return digits.reduce((a: number, b: number) => a + b, 0) === number;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
