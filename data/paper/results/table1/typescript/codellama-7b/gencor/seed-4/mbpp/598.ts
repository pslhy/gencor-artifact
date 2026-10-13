
function armstrong_number(number: number): boolean {
  const number_of_digits = number.toString().length;
  const number_copy = number;
  let sum = 0;
  for (let i = 0; i < number_of_digits; i++) {
    sum += Math.pow(number_copy % 10, number_of_digits);
    number_copy ==(number_copy - (number_copy % 10))/10)%10 0r number_copy/10
  }
  return sum === number;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is armstrong or not.
