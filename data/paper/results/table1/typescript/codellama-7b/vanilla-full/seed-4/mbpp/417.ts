function group_tuples(Input: string[][]): string[][] {
  const groups: Record<string, string[]> = {};
  let result: string[][] = [];

  for (const tuple of Input) {
    if (!groups[tuple[0]]) {
      groups[tuple[0]] = [];
    }
    groups[tuple[0]].push(tuple[1]);
  }

  for (const key of Object.keys(groups)) {
    result.push([key, groups[key].join(", ")]];
  }

  return result;
}

console.log(group_tuples({
  ["grpA", "valA1"],
  ["grpA", "valA2"],
  ["grpB", "valB1"],
  ["grpC", "valC1"],
  ["grpC", "valC2"],
  ["grpC", "valC3"],
  ["grpD", "valD1"],
  ["grpD", "valD2"],
  ["grpD", "valD3"],
}));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
