function snake_to_camel(word: string): string {
   if (word.length <= 1) {
       return word;
   }
   let camelCase = word.charAt(0).toLowerCase();
   for (let i = 1; i < word.length; i++) {
       if (word.charAt(i) == '_') {
           camelCase += word.charAt(i + 1).toUpperCase();
       } else {
           camelCase += word.charAt(i).toLowerCase();
       }
   }
   return camelCase;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert the given snake case string to camel case string.
