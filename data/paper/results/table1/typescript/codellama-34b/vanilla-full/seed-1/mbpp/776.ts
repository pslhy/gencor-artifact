function count_vowels(test_str: string): number {
   let vowel_count = 0;
   for (const c of test_str) {
       if ('aeiou'.indexOf(c.toLowerCase()) !== -1) {
           vowel_count += 1;
       }
   }
   return vowel_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
