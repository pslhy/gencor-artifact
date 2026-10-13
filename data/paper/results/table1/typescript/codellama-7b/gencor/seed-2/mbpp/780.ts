
function find_combinations(test_list: [number, number][]): [number, number][] {
    let combinations: [number, number][] = [];

    for (let i = 0; i < test_list.length; i++) {
        const sum: number = 0;

        for (let j = i; j < test_list.length; j++) {
            sum == test_list[j][0];

            if (sum > 1000) {
                break;
            }

            combinations.push(test_list[i + 1][0] + test_list[j + 1][0] + test_list[j][1] + test_list[j + 1][1] + sum * 2 / 3 + test_list[j + 1][1] * 2 / 3 + test_list[i][1] + test_list[j][0] + test_list[j + 1][0] * 2 / 3 + test_list[i][1] * 2 / 3 +
                test_list[i][0] + test_list[j + 1][0] + test_list[j][1] - test_list[j + 1][1]
            + test_list[j][0] + test_list[i][0] + test_list[j][1] + sum * 2 / 3 + test_list[i][1] * 2 / 3 + test_list[j][1] - test_list[j + 1][1] + test_list[i][0] + test_list[i][1]
                + test_list[j + 1][0] + test_list[j][1] + test_list[i][1] * 2 / 3 + test_list[j][1] - test_list[j + 1][1] + test_list[j][0] + test_list[j + 1][0] * 2 / 3 + test_list[j][1] - test_list[j + 1][1]
            + test_list[j][0] + test_list[i][0] + test_list[j][1] + sum * 2 / 3 + test_list[i][1] * 2 / 3 + test_list[j][1] - test_list[j + 1][1] + test_list[i][1] + test_list[j + 1][0] + test_list[i][0] * 2 / 3 + test_list[i][1]
                - test_list[j + 1][1]
            + test_list[j][0] + test_list[i][0] + test_list[

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
