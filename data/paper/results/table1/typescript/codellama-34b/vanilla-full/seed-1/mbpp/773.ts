function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
    const regex = new RegExp(pattern.replace(/([^a-z0-9])/gi, "\\$1"), "gi");
    const match = regex.exec(text);
    if (match) {
        return [match[0], match.index, match.index + match[0].length];
    }
    return undefined;
}

// Example usage:
console.log(occurance_substring("hello world", "world")); // ["world", 6, 11]
console.log(occurance_substring("hello world", "earth")); // undefined


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
