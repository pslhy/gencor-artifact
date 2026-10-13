function max_val(listval: (string | number)[]): number {
   let max_value: number = null;
   for (let value in listval){
       if (isFinite(value)) {
           if (max_value === null || value > max_value) {
               max_value = value;
           }
       }
   }
   return max_value;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.
