function remove_Occ(s: string, ch: string): string {
    let str = "";
    for (let i = 1; i < s.length-1; i++) {
        if (s[i] != ch) {
            str += s[i];
        }
    }
    return str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
