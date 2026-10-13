function check_type(test_tuple: any): boolean { 
    let res: boolean = true; 
    let first_type: any = typeof test_tuple[0]; 
    for (let ele of test_tuple) { 
        if (typeof ele !== first_type) { 
            res = false; 
            break; 
        } 
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all the elements in array have same data type or not.
