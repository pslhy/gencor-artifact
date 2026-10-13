function find_combinations(test_list: [number, number][]): [number, number][] {
    let result: [number, number][] = [];

    for (let i = 0; i < test_list.length; i++) {
        const current_sum = test_list[i][0] + test_list[i][1];
        const remaining_sum = current_sum - test_list[i][0];

        for (let j = 0; j < test_list.length; j++) {
            if (j !== i && test_list[j][0] === remaining_sum) {
                result.push([test_list[i][0], test_list[j][0]]);
            }
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
