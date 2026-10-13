function find_Index(n: number): number {
   const digits = Array(10).fill(0);
   for (let i = 0; i < 10; i++) {
       digits[i] = Math.pow(10, i);
   }
   let count = 0;
   let index = 0;
   for (let i = 1; i < n; i++) {
       count += digits[i];
       if (count >= n) {
           index = i;
           break;
       }
   }
   return index;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
