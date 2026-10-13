function unique_product(list_data: number[]): number {
    let result = 1
    for (let i = 0; i < list_data.length; i++) {
        for (let j = i + 1; j < list_data.length; j++) {
            if (list_data[i] !== list_data[j]) {
                result *= list_data[i] * list_data[j]
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
//     Write a tsthon function to calculate the product of the unique numbers in a given array.