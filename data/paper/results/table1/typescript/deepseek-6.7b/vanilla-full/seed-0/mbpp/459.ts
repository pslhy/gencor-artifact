function remove_uppercase(str1: string): string {
    const splitstr = str1.split(/([A-Z]+)/); 
    const filteredArray = splitstr.filter(s => !s.match(/[A-Z]+/));
    return filteredArray.join("");
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uppercase substrings from a given string.
