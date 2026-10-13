function group_tuples(Input: string[][]): string[][] {
  if(input.length == 0 || input[0].length == 0){
      return [];
  }
  let groups = [];
  for(let i = 0; i < input[0].length; i++){
    for(let j = 1; j < input.length; j++){
        if (input[j][i] !== input[0][i]){
            break; 
        }
    }
    groups.push(input.slice(0, j));
  }
  return groups;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
