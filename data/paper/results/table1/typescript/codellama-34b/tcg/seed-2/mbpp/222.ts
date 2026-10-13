function check_type(test_tuple: any): boolean {
    let result = true;
    let type = typeof test_tuple.valueOf();

    for (const element of test_tuple.toLocaleString()) {
        if (typeof element !== type) {
            result = false;
            break;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.