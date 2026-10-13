function flatten_list(list1: (number | number[])[]): number[] {
    let result: number[] = []
    for (let element of list1) {
        if (element instanceof Array) {
            result = result.concat(flatten_list(element))
        } else {
            result.push(element)
        }
    }
    return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten a given nested array structure.
