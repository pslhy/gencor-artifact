function find_literals(text: string, pattern: string): [string, number, number] {
    const regex = new RegExp(pattern, 'g');
    const match = regex.exec(text);
    if (match) {
        const start = match.indexOf(pattern);
        const end = start + match[0].length - 1;
        return [match[0], start, end];
    }
    return ['', -1, -1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.