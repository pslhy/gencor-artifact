function reverse_Array_Upto_K(input: number[], k: number): number[] {
   if (k >= input.length) {
       return input;
   }
   let reverseArr = [];
   for (let i = k - 1; i >= 0; i--) {
       reverseArr.push(input[i]);
   }
   for (let i = k; i < input.length; i++) {
       reverseArr.push(input[i]);
   }
   return reverseArr;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
