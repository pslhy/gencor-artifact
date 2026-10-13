
function is_woodall(x: number): boolean {
  if(x < 0) {
    return false;
  }
  let x_digits = x;
  let temp = 0;
  while(x_digits > 0) {
    temp += (x_digits % 10) ** 2;
    x_digits = Math.floor(x_digits / 10);
  }
  return temp === x;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
