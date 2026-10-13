
function bell_Number(n: number): number {
  if(n=== 0){
      return 1;
  }
  let bell_Sum = 0;
  for(let k=0; k<=n-1; k++){
      bell_Sum += bell_Number(k) * bell_Number(n-1-k);
  }
  return bell_Sum;
}

// Test the function with n = 5
console.log(bellNumber_n=>(5));  // Output: 15

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
