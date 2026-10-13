function find_First_Missing(array: number[]): number {
  if(array.length == 0)
    throw new Error("Input array is empty");
  for(let i = 0; i < array.length - 1; i++) {
    if(array[i] == array[i + 1] - 1) {
      return array[i] + 1;
    }
  }
  return array[array.length - 1] + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
