function union_elements(test_tup1: number[], test_tup2: number[]): number[] {
   let union: number[] = [];
  
   test_tup1.forEach(function(element: number) {
      union.push(element);
  
      test_tup2.forEach(function(element2: number) {
         if (!union.includes(element2)) {
            union.push(element2);
         }
      ;
   
   union.sort();
   return union;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the union of the elements of two given arrays and output them in sorted order.