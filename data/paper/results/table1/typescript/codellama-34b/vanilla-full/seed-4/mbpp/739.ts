function find_Index(n: number): number {
   if (n == 1) {
      return 1;
   }
    var length = 10 ** (n - 1);

   for(var index = 1; index < Number.MAX_VALUE; index++) {
      var num = index*(index+1)/2;
      var strNum = num.toString();

      if(strNum.length == n) {
         return index;
      }

      if(strNum.length > n) {
         return index - 1;
      }
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
