function search(arr: number[]): number {
   let start = 0;
   let end = arr.length - 1;
   while (start < end) {
       let middle = Math.floor((start + end) / 2);
       if (arr[middle] == arr[middle - 1]) {
           end = middle - 1;
       } else {
           start = middle;
       }
   }
   return arr[start];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
