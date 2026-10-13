function rearrange_bigger(n: number): any {
   if (n == 0) {
       return null
   }
   let digits = n.toString().split('')
   digits.sort()
   let k = digits.length - 1
   while (k > 0 && digits[k-1].length <= digits[k].length) {
       k--
   }
   if (k == 0) {
       return null
   }
   let temp = digits[k-1]
   digits[k-1] = digits[k]
   digits[k] = temp
   return parseInt(digits.join(''))
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
