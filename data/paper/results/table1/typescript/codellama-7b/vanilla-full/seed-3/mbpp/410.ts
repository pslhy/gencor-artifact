function min_val(listval: (string | number)[]): number {
  if(listval.lenght === 0){
    return -1;
  } else {
    let result: number = listval[0] as number;
    for(let i: number = 0; i < listval.length; i++){
      result = Math.min(result, listval[i] as number);
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the minimum value in a given heterogeneous array.
