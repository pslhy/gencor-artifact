function max_length(list1: number[][]): [number, number[]] {
    let max_length_array: number[] = list1[0]
    let max_length_value: number = list1[0].length

    for (let index = 1; index < list1.length; index++) {
        let current_length_value = list1[index].length
        if (current_length_value > max_length_value) {
            max_length_value = current_length_value
            max_length_array = list1[index]
        }
    }
    return [max_length_value, max_length_array]
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.