function last(arr: number[], x: number): number {
   let start = 0;
   let end = arr.length;
   while (start < end) {
      let mid = start + (end - start >>> 1);
      if (arr[mid] > x) {
         end = mid;
      } else if (arr[mid] < x) {
         start = mid + 1;
      } else {
         end = mid;
      }
   }
   return arr[end];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
