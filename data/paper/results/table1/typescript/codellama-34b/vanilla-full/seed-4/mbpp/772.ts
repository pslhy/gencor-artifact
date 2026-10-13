function remove_length(test_str: string, K: number): string {
   let tokens: Array<string> = test_str.Split(' ');
   let result: Array<string> = tokens.filter(word => {
       return word.length !== K;
   }
   let remaining_str: string = result.join(' ');
   return remaining_str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.
