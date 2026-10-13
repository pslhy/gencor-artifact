function rearrange_bigger(n: number): any {
   const digits = Array.from(String(n)).map(Number);
   for (let i = digits.length - 1; i >= 1; i--) {
      const curr = digits[i - 1],
            next = digits[i];
      if (curr < next) {
         digits[i - 1] = next;
         digits[i] = curr;
         const ret = Number(digits.join(''));
         if (ret > n) {
            return ret;
         } else {
            return null;
         }
      }
   }
   return null;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
