function find_lists(Input: any[]): number {
  if(typeof Input !== "object") {
    throw new Error("Input must be an array");
  }

  let list_count = 0;
  for(let i = 0; i < Input.length; i++) {
    if(Array.isArray(Input[i])) {
      list_count++;
    }
  }

  return list_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find number of arrays present in the given array.