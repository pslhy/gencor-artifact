
function find_combinations(test_list: [number, number][]): [number, number][] {
    let sum = Array(test_list.length).fill(0);
    let paths = Array(test_list.length).fill([]).map((row) => Array(test_list.length).fill([]));
    let minSum = 0;

    for (let i = 0; i < test_list.length; i++) {
        sum[i] = test_list[i][0] + (i > 0 ? sum[i - 1] : 0);
    }

    for (let i = 0; i < test_list.length; i++) {
        for (let j = 0; j <= i; j++) {
            if (j > 0) {
                let val = sum[i] - sum[j - 1];
                if (val > minSum) {
                    minSum = val;
                    paths[i][val] = paths[j - 1][val - test_list[i][0]].concat([test_list[i]]);
                } else if (val === minSum) {
                    paths[i][val] = paths[i][val].concat([test_list[i]]);
                }
            } else {
                if (test_list[i][0] > minSum) {
                    minSum = test_list[i][0];
                    paths[i][minSum] = [test_list[i]];
                } else if (test_list[i][0] === minSum) {
                    paths[i][minSum] = paths[i][minSum].concat([test_list[i]]);
                }
            }
        }
    }

    return paths[test_list.length - 1][minSum];
}

console.log(find_combinations([[1, 2], [2, 2], [3, 1], [2, 1]])); // [[1,2],[2,1]]
console.log(find_combinations([[3, 7], [4, 5], [2, 7], [6, 0]])); // [[4,5],[6,0]]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
