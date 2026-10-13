function find_combinations(test_list: [number, number][]): [number, number][] {
    const result: [number, number][] = [];
    for (const triplet of test_list) {
        const sum = triplet[0] + triplet[1];
        if (sum <= 10) {
            result.push(triplet);
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
