
function max_sum_list(lists: number[][]): number[] {
  return lists.reduce((acc: number[], cur: number[]) => {
    if (acc.length < cur.length) {
      return cur;
    } else if (acc.length === cur.length) {
      return acc.reduce((sum: number, elem: number) => sum + elem, 0) > cur.reduce((sum: number, elem: number) => sum + elem, 0) ? acc : cur;
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
