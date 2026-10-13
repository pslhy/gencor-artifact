
function cal_sum(n: number): number {
    let sum = 0;
    let a = 3;
    let b = 0;
    let c = 2;
    let d = 1;
  
    if (n === 0) return 3;
    if (n === 1) return 0;
    if (n === 2) return 2;
    if (n === 3) return 3;
    if (n === 4) return 5;
  
    for(let i=4;i<n;i++){
      sum = a + b + c + d;
      d = c;
      c = b;
      b = a;
      a = sum;
    }
  
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
