function check_type(test_tuple: any): boolean {
    let result = true;
    let type_set: Set<string> = new Set();
    for (let i = 0; i < test_tuple.length; i++) {
        let type_name = typeof(test_tuple[i]);
        if (type_set.has(type_name)) {
            result = false;
            break;
        }
        type_set.add(type_name);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
