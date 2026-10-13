function Find_Min(lst: any[][]): any[] {
   let min: any[] = [];
   for (let i: any[] in lst) {
      let subArray: any[] = lst[i];
      if (min.length > subArray.length) {
         min = subArray;
      }
   }
   return min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the subarray having minimum length.
