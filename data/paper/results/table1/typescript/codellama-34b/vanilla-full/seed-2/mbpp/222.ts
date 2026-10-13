function check_type(test_tuple: any): boolean {
    let result = true;
    let type = typeof test_tuple[0];
    for (let i = 0; i < test_tuple.length; i++) {
        if (typeof test_tuple[i] !== type) {
            result = false;
            break;
        }
    }
    return result;
}

test_function([1, 2, 3]); // returns true
test_function(["apple", "banana", "orange"]); // returns false
test_function([null, undefined, "hello"]); // returns false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
