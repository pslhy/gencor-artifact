function check_type(test_tuple: any): boolean {
    const type = typeof test_tuple.valueOf()
    return test_tuple.hasOwnProperty("length") ? test_tuple.toString().replace(/^[^\[]*\[/, '').replace(/\]$/, '').split(', ').every(v => typeof v === type) : typeof test_tuple === type
}

function check_same_datatype(array: any[]): boolean {
    return array.every(check_type)
}

// Testing
const array1 = [1, 2, 3, 4, 5]
const array2 = [1, 2, '3', 4, 5]

check_same_datatype(array1)   
// should return true as all elements are numbers

check_same_datatype(array2)   
// should return false as the array has a string


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.