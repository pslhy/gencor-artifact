function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
    const index = text.indexOf(pattern);
    if (index !== -1) {
        return [pattern, index, index + pattern.length - 1];
    }
    return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
