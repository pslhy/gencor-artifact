function remove_kth_element(list1: number[], L: number): number[] {
   let list2: number[] = [];
   for (let i = 0; i < list1.length; i++) {
      if (i !== L - 1) {
         list2.push(list1[i]);
      }
   }
   return list2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array and returns an array with the same elements, but the k'th element removed.
