function longest(strings: string[]): string | undefined {
  if (strings.length === 0) {
    return undefined;
  }
  let longestString = strings[0];
  for (let i = 1; i < strings.length; i++) {
    if (strings[i].length > longestString.length) {
      longestString = strings[i];
    }
  }
  return longestString;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Out of array of strings, return the longest one. Return the first one in case of multiple
//     strings of the same length. Return undefined in case the input array is empty.
//     >>> longest([])
//     undefined
//     >>> longest(["a", "b", "c"])
//     "a"
//     >>> longest(["a", "bb", "ccc"])
//     "ccc"
