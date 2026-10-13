function how_many_times(string: string, substring: string): number {
  if(string.length === 0 || substring.length === 0) {
    return 0;
  }
  let count = 0;
  let i = 0;
  while(i < string.length) {
    if(string.slice(i, i + substring.length) === substring) {
      count++;
      i += substring.length;
    } else {
      i++;
    }
  }
  return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Find how many times a given substring can be found in the original string. Count overlaping cases.
//     >>> how_many_times("", "a")
//     0
//     >>> how_many_times("aaa", "a")
//     3
//     >>> how_many_times("aaaa", "aa")
//     3
