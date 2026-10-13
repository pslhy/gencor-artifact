function replace_char(str1: string, ch: string, newch: string): string {
    const pos = str1.indexOf(ch);
    if (pos === -1) {
        return str1;
    }
    const result = str1.substring(0, pos) + newch + str1.substring(pos + 1);
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to replace characters in a string.
