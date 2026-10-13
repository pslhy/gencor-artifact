function remove_Occ(s: string, ch: string): string {
    let firstOcc = s.indexOf(ch);
    if(firstOcc === -1) {
        return s;
    }
    let lastOcc = s.lastIndexOf(ch);
    return s.slice(0, firstOcc) + s.slice(firstOcc+1, lastOcc) + s.slice(lastOcc+1);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
