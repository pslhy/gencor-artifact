function add_lists(test_list: number[], test_tup: [number, number]): [number, number, number, number, number] {
    const tup_length = test_tup.len()
    const final_list: [number, number, number, number, number] = [
        test_list[0] + test_tup[0],
        test_list[1] + test_tup[1],
        test_list[2] + test_tup[2],
        test_list[3] + test_tup[3],
        test_list[4] + test_tup[4]
    ]
    return final_list
}

const test_list = [1, 2, 3, 4, 5]
const test_tup = [10, 20, 30, 40, 50]
const result = add_lists(test_list, test_tup)
console.log(result) // [11, 22, 33, 44, 55]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to append the given array to the given arrays.
