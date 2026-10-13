function check_type(test_tuple: any): boolean {
    let prev_type = null;
    for (var x of test_tuple) {
        if (prev_type === null) {
            prev_type = typeof x;
        } else if (prev_type != typeof x) {
            return false;
        }
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
