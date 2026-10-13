function count_distinct_characters(string: string): number {
    let charMap = new Map<string, number>();
    for(let char of string.toLowerCase()) {
        charMap.set(char, 1);
    }
    return charMap.size;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string, find out how many distinct characters (regardless of case) does it consist of
//     >>> count_distinct_characters("xyzXYZ")
//     3
//     >>> count_distinct_characters("Jerry")
//     4