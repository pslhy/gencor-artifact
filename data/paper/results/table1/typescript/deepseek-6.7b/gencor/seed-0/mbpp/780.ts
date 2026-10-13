
function find_combinations(test_list: [number, number][]): [number, number][] {
    const nums = new Set<number>();
    const result: [number, number][] = [];

    for (const [a, b] of test_list) {
        nums.add(a);
        nums.add(b);
        //Adds to result
        result.push([a, b]);

        for (const [c, d] of result) {
            if (c !== a || d !== b) {
                nums.add(a + c);
                nums.add(b + d);
                nums.add(a + d);
                nums.add(b + c);
                
                //Ensures no duplicate combinations
                if (!nums.has(c + d)) {
                    result.push([c, d]);
                }
                if (!nums.has(c + b)) {
                    result.push([c, b]);
                }
                if (!nums.has(a + d)) {
                    result.push([a, d]);
                }
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
