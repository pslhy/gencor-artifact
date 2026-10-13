function check_type(test_tuple: any): boolean {
    const first_type = typeof test_tuple.valueOf()
    return test_tuple.valueOf().toString().split(',').every(element => typeof element === first_type)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.