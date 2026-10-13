function find_literals(text: string, pattern: string): [string, number, number] {
    const regex = new RegExp(pattern);
    const match = text.match(regex);
    if (match) {
        const matchStart = text.indexOf(match[0]);
        const matchEnd = matchStart + match[0].length - 1;
        return [match[0], matchStart, matchEnd];
    }
    return [null, -1, -1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
