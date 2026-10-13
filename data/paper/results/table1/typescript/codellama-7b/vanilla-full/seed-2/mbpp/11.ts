function remove_Occ(s: string, ch: string): string {
    let i = s.indexOf(ch);
    let j = s.lastIndexOf(ch);
    if (i === -1 || j === -1) {
        return s;
    }
    return s.substring(0, i) + s.substring(j + 1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
