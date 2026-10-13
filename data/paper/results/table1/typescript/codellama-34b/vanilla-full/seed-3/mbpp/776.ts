function count_vowels(test_str: string): number {
   let count = 0;
   test_str = test_str.toLowerCase();
   for (let i = 0; i < test_str.length; i++) {
      if (test_str[i] == 'a' || test_str[i] == 'e' || test_str[i] == 'i' || test_str[i] == 'o' || test_str[i] == 'u') {
         count += 1;
      }
   }
   return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
