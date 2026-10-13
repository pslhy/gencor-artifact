function common_element(list1: any[], list2: any[]): boolean | undefined {
   if(list1.length === 0 || list2.length === 0) {
       return false;
   }
   return list1.some(element1 => list2.includes(element1));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes two arrays and returns true if they have at least one common element.