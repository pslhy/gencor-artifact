
function check_K(test_tup: number[], K: number): boolean {
   if(test_tup.length <= K){
    return false;
   }
  for(let i : number = K; i < test_tup.length;i++){
       for(let j : number = 0; j < K; j++){
         if (test_tup[i] == test_tup[j]){
     return false;
      }}}
   return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given arrays contain the k or not.
