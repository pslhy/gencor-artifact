function len_log(list1: string[]): number {
   let len: number = 0
   for (let word: string[] = list1; len < list1.length; len++) {
        if (word[len].length > list1[len].length) {
            const temp: number = list1[len].length
            const word2: string = list1[len]
            list1[len] = word[len]
            word[len] = word2
            len = list1.length - 1
        }
    }
    return len
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.