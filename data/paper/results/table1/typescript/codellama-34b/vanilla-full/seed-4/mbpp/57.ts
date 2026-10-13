function find_Max_Num(arr: number[]): number {
   if(arr.length === 1) {
      return arr[0];
   }
  let max = arr[0];
  for(let i = 0; i < arr.length; i++) {
      const curr_num = parseInt(String(arr[i]) + String(arr[i+1]));
      max = Math.max(curr_num, max);
  }
  return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
