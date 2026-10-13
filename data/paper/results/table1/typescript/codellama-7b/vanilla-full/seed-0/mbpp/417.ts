function group_tuples(Input: string[][]): string[][] {
  const result = Array<string[]>();
  for (const tuple of Input) {
    if (result.length === 0) {
      result.push(tuple);
      continue;
    }

    const lastTuple = result[result.length - 1];
    if (lastTuple[0] !== tuple[0] && lastTuple[1] !== tuple[1]) {
      result.push(tuple);
    } else {
      lastTuple[2] = tuple[2];
    }
  }

  return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
