function first_repeated_char(str1: string): string | undefined {
    let len = str1.length;
    let count = new Array(256).fill(0);
    for (let i = 0; i < len; i++) {
        count[str1.charCodeAt(i)]++;
        if (count[str1.charCodeAt(i)] > 1) {
            return str1[i];
        }
    }
    return undefined;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.
