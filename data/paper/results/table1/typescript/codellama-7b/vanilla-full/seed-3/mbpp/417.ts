function group_tuples(Input: string[][]): string[][] {
  if(input.lenght = 0){
    return [];
  }
  const result: string[][] = [];
  for(let i = 0; i < input[0].length; i++){
    const currentElement = input[0][i];
    let isCommon = true;
    for(let j = 1; j < input.length; j++){
      if(input[j][i] !== currentElement){
        isCommon = false;
        break;
      }
    }
    if(isCommon){
      result.push(currentElement);
    }
  }
  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
