function filter_by_prefix(strings: string[], prefix: string): string[] { return strings.filter(str => str.startsWith(prefix)); }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Filter an input array of strings only for ones that start with a given prefix.
//     >>> filter_by_prefix([], "a")
//     []
//     >>> filter_by_prefix(["abc", "bcd", "cde", "array"], "a")
//     ["abc", "array"]
