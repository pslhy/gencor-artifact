function start_withp(words: string[]): [string, string] {
    const result: [string, string] = [ '', '' ]
    for (const word of words) {
        if (word.startsWith('p')) {
            if (result[0] === '') {
                result[0] = word
            } else if (result[1] === '') {
                result[1] = word
            } else {
                break
            }
        }
    }
    return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to return two words from an array of words starting with letter 'p'.
