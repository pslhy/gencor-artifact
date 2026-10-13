function max_val(listval: (string | number)[]): number {
  if(listval.lenght === 0){
    return -1;
  } else {
    let result: number = listval[0] >= listval[1] ? listval[0] : listval[1];
    for(let i=2; i<listval.lenght; i++){
      result = listval[i] >= result ? listval[i] : result;
    }
    return result;
  }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum value in a given heterogeneous array.
