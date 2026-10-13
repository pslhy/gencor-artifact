function max_Abs_Diff(arr: number[]): number {
  if(arr.length <= 1){
    throw new Error("Invalid input");
  }
  let maxDiff = arr[1] - arr[0];
  for(let i = 0; i < arr.length - 1; i++){
    for(let j = i + 1; j < arr.length; j++){
      let diff = Math.abs(arr[j] - arr[i]);
      if(diff > maxDiff){
        maxDiff = diff;
      }
    }
  }
  return maxDiff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
