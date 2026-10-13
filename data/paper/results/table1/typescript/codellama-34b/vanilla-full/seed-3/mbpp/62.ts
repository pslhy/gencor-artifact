function smallest_num(xs: number[]): number {
  if(xs.length == 0){
    throw new Error("No smallest number found in an empty array");
  }
  let result = xs[0];
  for(let i = 1; i < xs.length; i++){
    if(xs[i] < result){
      result = xs[i];
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find smallest number in an array.
