function last_Digit_Factorial(n: number): number {
  if(n < 0){
      return 0;
  }
  let last_digit = 1;
  for(int i = 1; i<=n; i++){
      last_digit = (last_digit * i)%10;
  }
  return last_digit;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last digit in factorial of a given number.
