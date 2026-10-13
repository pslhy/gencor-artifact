function filter_by_substring(strings: string[], substring: string): string[] {
    return strings.filter(str => str.includes(substring));
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Filter an input array of strings only for ones that contain given substring
//     >>> filter_by_substring([], "a")
//     []
//     >>> filter_by_substring(["abc", "bacd", "cde", "array"], "a")
//     ["abc", "bacd", "array"]
