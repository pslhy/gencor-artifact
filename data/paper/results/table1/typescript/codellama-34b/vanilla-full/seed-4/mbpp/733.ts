function find_first_occurrence(A: number[], x: number): number {
   let low: number = 0
   let high: number = A.length - 1
 
   while (low <= high) {
       let mid: number = (low + high) / 2
       if (A[mid] < x) {
           low = mid + 1
       } else if (A[mid] > x) {
           high = mid - 1
       } else {
           return mid
       }
   }
 
   return -1
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the index of the first occurrence of a given number in a sorted array.
