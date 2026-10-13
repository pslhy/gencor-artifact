function remove_length(test_str: string, K: number): string {
   let tokens: string[] = test_str.split(' ');
   let result: string[] = [];
   for(let i = 0; i < tokens.length; i++){
      if(tokens[i].length === K){
         result.push(tokens[i]);
      }
   }
   return result.join(' ');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.