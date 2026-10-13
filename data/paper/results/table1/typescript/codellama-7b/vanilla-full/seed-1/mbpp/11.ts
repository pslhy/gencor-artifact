function remove_Occ(s: string, ch: string): string {
    let startIndex = s.indexOf(ch),
        endIndex = s.lastIndexOf(ch),
        result = "";

    if (startIndex !== -1) {
        if (endIndex !== -1) {
            result = s.substring(startIndex + 1, endIndex);
        } else {
            result = s.substring(startIndex + 1);
        }
    } else {
        result = s.substring(0, endIndex);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
