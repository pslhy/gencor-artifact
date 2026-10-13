function max_sum_list(lists: number[][]): number[] {
  return lists.reduce((acc: number[], list: number[]) => {
    if (acc.length === 0 || list.reduce((a: number, b: number) => a + b) > acc.reduce((a: number, b: number) => a + b)) {
      return list;
    }
    return acc;
  }, []);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.