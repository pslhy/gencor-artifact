function Split(list: number[]): number[] {
    let result: number[] = []
    for (let i = 0; i < list.length; i++) {
        if (list[i] % 2 === 0) {
            result.push(list[i])
        }
    }
    return result
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find even numbers from an array of numbers.
