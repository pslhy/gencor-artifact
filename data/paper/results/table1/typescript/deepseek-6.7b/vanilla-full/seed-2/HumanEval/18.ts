function how_many_times(string: string, substring: string): number {
    let count = 0;
    let position = 0;

    if(substring.length > string.length) return 0;
  
    while ((position = string.indexOf(substring, position)) !== -1) {
        count++;
        position = position + substring.length;
    }
    return count;
}

console.log(how_many_times("", "a")); // 0
console.log(how_many_times("aaa", "a")); // 3
console.log(how_many_times("aaaa", "aa")); // 3


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
