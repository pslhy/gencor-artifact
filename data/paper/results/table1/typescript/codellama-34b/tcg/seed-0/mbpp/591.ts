function swap_List(newList: number[]): number[] {
  const switchPositions = (arr: number[]) : number[] => [...arr.slice(0, -1), arr[0]];
  const result = switchPositions(newList);
  return result;
}
const list = [1, 2, 3, 4, 5];
const swappedList = swap_List(list);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to interchange the first and last elements in an array.