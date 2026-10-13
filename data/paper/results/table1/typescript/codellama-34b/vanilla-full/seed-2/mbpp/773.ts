function occurance_substring(text: string, pattern: string): [string, number, number] | undefined {
    let result: [string, number, number] | undefined = undefined;
    let count = 0;
    let pos = 0;
    let i = 0;
    while (i < text.length) {
        if (text[i] === pattern[0]) {
            let j = 1;
            while (j < pattern.length && i + j < text.length && text[i + j] === pattern[j]) {
                j++;
            }
            if (j === pattern.length) {
                count++;
                pos = i;
                result = [pattern, count, pos];
            }
        }
        i++;
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the occurrence and position of the substrings within a string. Return undefined if there is no match.
