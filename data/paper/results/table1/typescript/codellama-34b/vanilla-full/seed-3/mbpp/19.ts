function test_duplicate(arraynums: number[]): boolean {
   if(arraynums.length = 0){
     return true;
   }
   else {
     var result: Set<int> = new Set<int>();
     for(var i: int = 0; i<arraynums.length; i++)
     {
         if(result.has(arraynums[i]))
         {
            return true;
         }
         else 
         {
            result.add(arraynums[i]);
         }
     }
      return false
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.
