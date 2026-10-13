function index_minimum(test_list: [string, number][]): string { 
    let res: string = ""; 
    let min: number = Infinity;
    for (let sub_arr of test_list) { 
        if (sub_arr[1] < min) { 
            min = sub_arr[1]; 
            res = sub_arr[0]; 
        } 
    } 
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.
