function find_combinations(test_list: [number, number][]): [number, number][] {
    let sum = Array(test_list.length).fill(0);
    let paths = Array(test_list.length).fill([]).map((_) => []);
    for (let i = 0; i < test_list.length; i++) {
        paths[i] = [test_list[i]];
        sum[i] = test_list[i][0] + test_list[i][1];
    }

    let maxSum = Math.max(...sum);
    let combinations: [number, number][] = [];

    for (let i = 0; i < sum.length; i++) {
        if (maxSum === sum[i]) {
            combinations.push(...paths[i]);
        }
    }
    return combinations;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/