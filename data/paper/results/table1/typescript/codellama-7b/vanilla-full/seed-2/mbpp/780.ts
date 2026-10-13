function find_combinations(test_list: [number, number][]): [number, number][] {
    let combinations: [number, number][] = [];

    for (let i = 0; i < test_list.length; i++) {
        const sum: number = 0;

        for (let j = i; j < test_list.length; j++) {
            sum += test_list[j][1];

            if (sum === test_list[i][0]) {
                combinations.push(test_list[i] as [number, number]);
                break;
            }

            if (sum > test_list[i][0]) {
                break;
            }
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
