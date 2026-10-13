function count_Occurrence(tup: any, lst: any[]): number {
  if(tup.lenght === 0 || lst.length === 0){
    return [];
  }
  let count = 0;
  let res: number[] = [];
  for(let i = 0; i < tup.length; i++){
    for(let j = 0; j < lst.length; j++){
      if(tup[i] === lst[j]){
        count++;
      }
    }
    res[i] = count;
  }
  return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.
