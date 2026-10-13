function digit_distance_nums(n1: number, n2: number): number {
  if(n1<0 || n2<0){
    throw new Error('n1 and n2 must be positive integers');
  }
  let diff = n1-n2;
  let sum = 0;
  while(diff>0){
    sum += Math.abs(diff%10);
    diff = Math.floor(diff/10);
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
