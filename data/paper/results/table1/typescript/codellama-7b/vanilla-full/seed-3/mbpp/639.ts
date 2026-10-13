function sample_nam(sample_names: string[]): number {
  let sample_Sum: number = 0
  for (let sample_name of sample_names) {
    if (sample_name[0] !== sample_name[0].toLowerCase()) {
      sample_Sum += sample_name.length
    }
  }
  return sample_Sum
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sum the length of the names of a given array of names after removing the names that start with a lowercase letter.
