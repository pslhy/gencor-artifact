function is_polite(n: number): number {
   if (n == 1) {
       return false;
   }
   let num: number = n;
   let count: number = 0;
   while (num > 0) {
       let digit: number = num % 10;
       if (digit != 0 && n % digit == 0) {
           count++;
       }
       num = Math.floor(num / 10);
   }
   if (count == 0) {
       return false;
   }
   return true;
}

function nth_polite(n: number): void {
   let count: number = 1;
   let num: number = 1;
   while (count < n) {
       num += 1;
       if (is_polite(num)) {
           count += 1;
       }
   }
   console.log(num);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
