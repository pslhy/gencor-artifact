function number_of_substrings(str: string): number {
    let count = 0
    for (let i = 0; i < str.length; i++) {
        if (str[i] == ' ') {
            count++
        }
    }
    return count - 1
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of non-empty substrings of a given string.
