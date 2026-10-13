function remove_Occ(s: string, ch: string): string { 
    let firstIndex = s.indexOf(ch); 
    let lastIndex = s.lastIndexOf(ch); 

    if (firstIndex === -1 || lastIndex === -1 || firstIndex === lastIndex) return s; 

    let result: string = s.slice(0, firstIndex) + s.slice(firstIndex + 1, lastIndex) + s.slice(lastIndex + 1); 
    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove first and last occurrence of a given character from the string.
