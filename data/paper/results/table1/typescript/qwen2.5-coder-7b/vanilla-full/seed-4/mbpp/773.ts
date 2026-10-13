function occurance_substring(text: string, pattern: string): [string, number, number] | undefined { 
    const result = text.match(new RegExp(pattern, "g"));
    if (!result) return undefined;
    
    let positions: number[] = [];
    let index = text.indexOf(pattern);
    while (index !== -1) {
        positions.push(index);
        index = text.indexOf(pattern, index + 1);
    }
    
    return [result[0], positions[0], positions.length];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
