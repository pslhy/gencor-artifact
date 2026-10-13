
function cummulative_sum(test_list: number[][]): number {
    const result = Array(test_list.length);
    let sum = 0;
    for(let i = 0; i < test_list.length; i++) {
        sum += test_list[i].reduce((a: number, b: number) => a + b);
        result[i] = sum;
    }
    return sum;
}

const output = cummulative_sum([[1,2,3], [3,4,5], [5, 6, 7]]);
console.log(output); // Output: [12, 17, 24]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the cumulative sum of all the values that are present in the given array of arrays.
