function all_prefixes(string: string): string[] {
  return string
    .split("")
    .map((_, index) => string.slice(0, index + 1))
    .sort((a, b) => a.length - b.length);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return array of all prefixes from shortest to longest of the input string
//     >>> all_prefixes("abc")
//     ["a", "ab", "abc"]
