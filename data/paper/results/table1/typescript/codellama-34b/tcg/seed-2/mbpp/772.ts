function remove_length(test_str: string, K: number): string {
    let output = ""
    for (let word of test_str.split(" ")) {
        if (word.length !== K) {
            output += word + " "
        }
    }
    return output.trim()
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove all the words with k length in the given string.