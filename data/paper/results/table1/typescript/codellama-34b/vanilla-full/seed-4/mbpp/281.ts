function all_unique(test_list: number[]): boolean {
   if test_list.length == 0 {
      return true;
   }
   for i in range(0, len(test_list)-1):
      if test_list[i] in test_list[i+1:] {
         return false;
      } 
   return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if the elements of a given array are unique or not.
