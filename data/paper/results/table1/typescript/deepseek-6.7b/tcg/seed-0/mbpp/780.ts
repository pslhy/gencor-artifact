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
                if (!result.some(combo => combo[0] === a + c && combo[1] === b + d)) {
                    result.push([a + c, b + d]);
                }
                if (!result.some(combo => combo[0] === a + d && combo[1] === b + c)) {
                    result.push([a + d, b + c]);
                }
            }
        }
    }

    return Array.from(nums.values()).slice(0, result.length).map((val,i) => [val,result[i][1]] ).concat(result.slice(nums.size / 2 )
    
    .map(combo => combo[0] > combo[1] ? combo


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/