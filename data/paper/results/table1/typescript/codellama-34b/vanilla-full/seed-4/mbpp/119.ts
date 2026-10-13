function search(arr: number[]): number {
   let start = 0;
   let end = arr.length - 1;
   while (start < end) {
       const mid = Math.floor((start + end) / 2);
       if (mid % 2 === 0) {
           if (arr[mid] !== arr[mid + 1]) {
               end = mid;
           } else {
               start = mid + 1;
           }
       } else {
           if (arr[mid] !== arr[mid - 1]) {
               start = mid + 1;
           } else {
               end = mid - 1;
           }
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
