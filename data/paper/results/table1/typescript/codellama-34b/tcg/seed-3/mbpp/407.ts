function rearrange_bigger(n: number): any {
   if(n < 10)
      return n * 10;
   let digits = n.toString()
   let i = digits.length - 1;
   while(i > 0 && digits[i] <= digits[i-1])
      {i--;}
   if(i === 0)
      return -1;
   let j = i - 1;
   while(j >= 0 && digits[i] >= digits[j])
      {j--;}
   digits = digits.split('').reverse().join('');
   return parseInt(digits.substring(0, i) + digits[i] + digits.substring(i + 1));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.