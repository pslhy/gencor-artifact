function len_log(list1: string[]): number {
    let highest = 0;
    for (const word of list1) {
        if (word.length > highest) {
            highest = word.length;
        }
    }
    return highest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
