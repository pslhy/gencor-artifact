function snake_to_camel(word: string): string {
   if (word.length <= 1) {
       return word;
   }
   let result = '';
   for (let i = 1; i < word.length; i++) {
       let c = word[i].toUpperCase();
       if (word[i - 1] === '_') {
           result += c;
       } else {
           result += word[i];
       }
   }
   return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert a snake case string to camel case string.
