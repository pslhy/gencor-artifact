function sample_nam(sample_names: string[]): number {
   let sum: number = 0
   for (let i: number = 0; i < sample_names.length; i++) {
        if (/^[a-z]/.test(sample_names[i])) {
            sum += sample_names[i].length
        }
   }
   return sum 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum the length of the names of a given array of names after removing the names that start with a lowercase letter.
