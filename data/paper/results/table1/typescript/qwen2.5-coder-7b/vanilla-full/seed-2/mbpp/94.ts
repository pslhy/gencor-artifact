function index_minimum(test_list: [string, number][]): string { 
    let res = [test_list[0]];
    for (let idx = 1; idx < test_list.length; idx++) {
        if (test_list[idx][1] < res[0][1]) 
            res = [test_list[idx]];
    }
    return res[0][0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.
