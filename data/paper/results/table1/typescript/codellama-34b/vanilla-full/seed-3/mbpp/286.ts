function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
  if(n < 1 || k < 1){
    return -1;
  } else {
    const sub_array_sum = a.reduce((previous: number, current: number) => previous+current);
    let max_sum: number = 0;
    for(let i: number = 0; i<k; i++){
      max_sum += sub_array_sum; 
    }
    return max_sum;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
