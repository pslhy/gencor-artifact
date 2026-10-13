function rearrange_bigger(n: number): any {
  const digits: Array<number> = n.toString().split('');
  let sorted_digits = digits.sort();

  var next_bigger = 0;
  for (let i = 0; i < sorted_digits.length; i++) {
    const digit = sorted_digits[i];
    if (digit > next_bigger) {
      next_bigger = digit;
    }
  }
  return next_bigger;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
