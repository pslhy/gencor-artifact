function return_sum(dict: {[key: string]: number}): number {
  let sum: number = 0;
  for (const entry of Object.entries(dict)) {
    sum += entry[1];
  }
  return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write function to find the sum of all items in the given object.
