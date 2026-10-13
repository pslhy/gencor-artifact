function find_combinations(test_list: [number, number][]): [number, number][] {
    let sum = Array(test_list.length).fill(0);
    let paths = Array(test_list.length).fill([]).map(() => []);
    let results: [number, number][] = [];
    find_combinations_helper(test_list, test_list.length - 1, sum, paths, results);
    return results;
}

function find_combinations_helper(test_list: [number, number][], n: number, sum: number[], paths: any[], results: [number, number][]) {
    if (n < 0) {
        results.push(sum.slice());
    } else {
        for (let i = 0; i <= n; i++) {
            sum[i] += test_list[n][i];
            paths[n].push(test_list[n][i]);
            find_combinations_helper(test_list, n - 1, sum, paths, results);
            sum[i] -= test_list[n][i];
            paths[n].pop();
        }
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
