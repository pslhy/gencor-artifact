
function find_combinations(test_list: [number, number][]): [number, number][] { 
    let res: [number, number][] = []; 
    function comb(arr: [number, number][], sum: number, start: number, curr: number[]) : void { 
        if (sum == 0) { 
            res.push([...curr].sort((a, b) => a - b) as [number, number]); 
            return; 
        } 
        for (let i = start; i < arr.length; i++) { 
            if (arr[i][0] > sum) break; 
            comb(arr, sum - arr[i][0], i, [...curr, arr[i][1]]); 
        } 
    } 
    for (let num of test_list) { 
        comb(test_list, num[0], 0, [num[1]]); 
    } 
    return res; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
