function rearrange_bigger(n: number): any {
   if(n < 10)
      return n * 10;
   var digits = n.toString()
   var i = digits.length - 1;
   while(i > 0 && digits[i] <= digits[i-1])
      i--;
   if(i === 0)
      return -1
   var j = digits.length - 1;
   while(j >= i && digits[j] <= digits[i-1])
      j--;
   var temp = digits[i-1]
   digits[i-1] = digits[j]
   digits[j] = temp
   return parseInt(digits.slice(0,i) + digits.slice(i+1).sort())
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
