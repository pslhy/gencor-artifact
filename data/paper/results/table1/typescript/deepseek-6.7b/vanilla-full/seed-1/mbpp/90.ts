function len_log(list1: string[]): number {
    let length = 0;
    for (let i = 0; i < list1.length; i++) {
        let wordLength = list1[i].length;
        if (wordLength > length) {
            length = wordLength;
        }
    }
    return length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
