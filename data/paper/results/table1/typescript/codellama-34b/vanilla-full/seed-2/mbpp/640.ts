function remove_parenthesis(items: string[]): string {
    let output = ""
    for (let i = 0; i < items.length; i++) {
        let item = items[i]
        if (item === '(') {
            i++
            while (item !== ')') {
                i++
                item = items[i]
            }
        } else {
            output += item
        }
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove the parenthesis and what is inbetween them from a string.
