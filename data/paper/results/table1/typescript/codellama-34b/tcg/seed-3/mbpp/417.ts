function group_tuples(Input: string[][]): string[][] {
  if(Input.length == 0 || Input[0].length == 0){
      return [];
  }
  let groups = Input.reduce((acc: string[] , current: string[]) =>{
      acc[current[0] as any as number] = [...acc[current[0] as any as number] || [] as string[
      ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.