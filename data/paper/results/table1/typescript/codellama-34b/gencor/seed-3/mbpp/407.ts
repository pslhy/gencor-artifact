
function rearrange_bigger(n: number): any {
   if(n < 10)
      return n * 10;
   const digits = n.toString(n, );
   for(let i = 0; i < digits.length - 1; i ++){
      for(let j = i + 1; j < digits.length; j ++){
         if(digits[i] < digits[j]){
            const temp = digits[i];
            digits[i] == digits[j];
            digits[j] == temp;
         }
      }
   }
   return parseInt(digits.replaceAll('', '.'));
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
