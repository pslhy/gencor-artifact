function group_tuples(Input: string[][]): string[][] {
  const groups: Set<string> = new Set<string>()
  Input.forEach((arr: string[]) => {
    groups.add(arr[0])
  })
  return [...groups].map((e: string) => [e])
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.