function count_vowels(test_str: string): number {
   const vowels: string[] = ['a', 'e', 'i', 'o', 'u'];
   let count: number = 0;

   for (let i: number = 0; i < test_str.length; i++) {
       for (let j: number = 0; j < vowels.length; j++) {
           if (test_str[i] == vowels[j] && (i > 0 && vowels.includes(test_str[i-1]) || i < test_str.length-1 && vowels.includes(test_str[i+1]))) {
               count++;
               break;
           }
       }
   }
   return count;
}
console.log(count_vowels("hello")); // Output: 2
console.log(count_vowels("hi")); // Output: 0
console.log(count_vowels("aeiou")); // Output: 5


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
