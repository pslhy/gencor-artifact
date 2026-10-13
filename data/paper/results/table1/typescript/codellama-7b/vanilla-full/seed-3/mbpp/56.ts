function checks(n: number): boolean {
  if(n < 10) {
    return false;
  }
  const reverse = n.toString().split('').reverse().join('');
  const double = reverse * 2;
  return (double - 1) === n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.
