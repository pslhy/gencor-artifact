function count_Occurrence(tup: any, lst: any[]): number {
  if(tup.toString().split(',').length !== lst.length) {
    throw new Error('Tuple size does not match array size');
  }
  return lst.map(x => tup.toString().split(',').indexOf(x.toString())).reduce((acc: number, cur: number) => acc + (cur !== -1 ? 1 : 0), 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.