function find_Index(n: number): number {
   if (n == 1) {
      return 1;
   }
   
   let i = 9 * (n - 1)
   let k = 10;
   for (i <= i + 100000; i++; k++) 
   {
      if (i % k == 0) 
      {
         return k;
      }
      i = i + 100000;
   }
   return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/