function index_minimum(test_list: [string, number][]): string {
    let min_val = Math.min(...test_list.map(([val, _i]) => _i));
    return test_list.find(([_, i]) => i === min_val)![0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.