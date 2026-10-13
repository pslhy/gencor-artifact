function group_tuples(Input: string[][]): string[][] {
  if(Input.length == 0)
    throw new Error("Input array is empty");
  const sorted_array: string[] = Input.reduce((acc: string[], curr: string[]) => curr.concat(acc), []).sort();
  const result = sorted_array.reduce((acc: string, curr: string, index: number) => {
    if(index == 0){
      acc.split(curr);
    } else if (index > 0 && acc[acc.length - 1] == curr){
      acc.slice(-1, 0);
    }
    return acc;
  }, [] as string[][]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.