function Diff(li1: number[], li2: number[]): number[] {
   let diff: number[] = [];
   for (let i: number = 0; i < li1.length; i++) {
       let presentOrNot: boolean = false;
       for (let j: number = 0; j < li2.length; j++) {
           if (li1[i] === li2[j]) {
               presentOrNot = true;
               break;
           }
       }
       if (!presentOrNot) {
           diff.push(li1[i]);
       }
   }
   return diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to get the difference between two arrays.
