function index_minimum(test_list: [string, number][]): string {
    let minimum_index = -1;
    for (let i = 0; i < test_list.length; i++) {
        if (minimum_index === -1 || test_list[i][1] < test_list[minimum_index][1]) {
            minimum_index = i;
        }
    }
    return test_list[minimum_index][0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of arrays, write a function that returns the first value of the array with the smallest second value.
