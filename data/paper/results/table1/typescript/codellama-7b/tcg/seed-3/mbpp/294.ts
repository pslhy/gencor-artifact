function max_val(listval: (string | number)[]): number {
  if(listval.length === 0) {
    return NaN;
  }
  let maxVal: number = listval[0] as number;
  for(let i: number = 0; i < listval.length; i++) {
    let element: (string | number) = listval[i];
    if(typeof element === "number" && element > maxVal) {
      maxVal = element as number;
    }
  }
  return maxVal;
}

let list: (string | number)[] = ["banana", "apple", 10, 20, 30];
let max = max_val(list); // max = 30


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.