function check_type(test_tuple: any): boolean {
    const tuple_length = test_tuple.length;
    let elementType;
    for (let i = 0; i < tuple_length; i++) {
        if (i == 0) {
            elementType = typeof test_tuple[i];
        } else {
            if (typeof test_tuple[i] !== elementType) {
                return false;
            }
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
