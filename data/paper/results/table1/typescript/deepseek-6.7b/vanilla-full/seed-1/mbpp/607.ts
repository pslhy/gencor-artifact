function find_literals(text: string, pattern: string): [string, number, number] {
    const regex = new RegExp(pattern);
    const matches = regex.exec(text);

    if (!matches) {
        throw new Error(`No match found for pattern "${pattern}" in text "${text}"`);
    }

    const [fullMatch, ...capturedGroups] = matches;
    const startIndex = matches.index;
    const endIndex = startIndex + fullMatch.length;
    const capturedText = fullMatch;

    return [capturedText, startIndex, endIndex];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
