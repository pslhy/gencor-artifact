function get_equal(Input: number[][]): boolean {
   if (Input.length <= 1) {
    return true;
   }
   let length = Input[0].length;
   for (let i = 0; i < Input.length; i++) {
      if (length !== Input[i].length) {
         return false;
      }
   }
   return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether all the given arrays have equal length or not.