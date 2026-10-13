function index_minimum(test_list: [string, number][]): string { 
    let min_elem = test_list[0][0]; 
    let min_sec = test_list[0][1]; 
    for (let [key, value] of test_list) { 
        if (value < min_sec) { 
            min_sec = value; 
            min_elem = key; 
        } 
    } 
    return min_elem; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.
