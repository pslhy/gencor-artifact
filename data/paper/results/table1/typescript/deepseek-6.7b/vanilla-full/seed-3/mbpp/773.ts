function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
    let occurrences: [string, number, number][] = [];

    let position = text.indexOf(pattern);

    while (position !== -1) {
        occurrences.push([pattern, position, position + pattern.length - 1]);
        position = text.indexOf(pattern, position + 1);
    }

    return occurrences.length > 0 ? occurrences : undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
