function extract_values(text: string): string[] {
    let result: string[] = []
    let in_quotes = false
    let current_value: string = ""

    for (let char of text) {
        if (char === '"') {
            in_quotes = !in_quotes
            if (!in_quotes) {
                result.push(current_value)
                current_value = ""
            }
        } else if (in_quotes) {
            current_value += char
        }
    }

    return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract values between quotation marks from a string.
