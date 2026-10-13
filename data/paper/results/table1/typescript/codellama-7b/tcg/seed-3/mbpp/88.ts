function freq_count(list1: number[]): {[key: number]: number} {
  let d = new Map<number, number>();
  for (let i of list1) {
    let count = d.get(i)!!==undefined ? 1 : d.get(i)!!==null ? 0 : d.get(i)!+1;
    d.set(i, count);
  }
  return d.values().reduce((sum: number, count: number) => sum + count, 0 as number) as {[key: number]: number};
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.