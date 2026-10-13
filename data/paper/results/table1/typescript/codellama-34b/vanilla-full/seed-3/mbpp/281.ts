function all_unique(test_list: number[]): boolean {
  if(test_list.length == 0){
     return true;
  }
  else {
     var result: Set<number> = new Set(test_list);
     if(result.size == test_list.length){
         return true;
     }
     else {
         return false;
     }
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if the elements of a given array are unique or not.
