function dog_age(h_age: number): number {
   if (h_age <= 16) {
       return h_age * 10.5;
   } else if (h_age <= 24) {
       return 10.5 + (h_age - 16) * 8;
   } else {
       return 18 + (h_age - 24) * 4;
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate a dog's age in dog's years.
