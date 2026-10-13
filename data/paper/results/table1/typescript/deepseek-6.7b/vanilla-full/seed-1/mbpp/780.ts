function find_combinations(test_list: [number, number][]): [number, number][] {
    let res: [number, number][] = test_list;
    for(let i = 0; i < test_list.length; i++) {
        for(let j = i + 1; j < test_list.length; j++) {
            if(test_list[j][0] == test_list[i][1]) {
                res.push( [test_list[i][0], test_list[j][1]] );
            }
        }
    }
    return res;
}

console.log(find_combinations([[1, 2], [2, 3], [3, 4]]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
