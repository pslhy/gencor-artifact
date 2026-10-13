
function find_Index(n: number): number {
   if (n == 1) {
      return 1;
   }
   
   let start = 1;
   let end = Math.floor(n / 2);
   let mid: number;
   let mid_Digits: number;

   while (start <= end) {
      mid = (start + end) / 2;
      mid_Digits = mid.toString().length;

      if (mid == n) {
         return mid_Digits;
      } else if (mid < n) {
         start = mid + 1;
      } else {
         end = mid - 1;
      }
   }

   return mid_Digits;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
