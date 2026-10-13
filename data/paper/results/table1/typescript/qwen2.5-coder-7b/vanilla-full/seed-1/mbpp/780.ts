function find_combinations(test_list: [number, number][]): [number, number][] { 
    let res: [number, number][] = []; 
    let sum_map: { [key: number]: [number, number][] } = {}; 
  
    for (let [x, y] of test_list) { 
        const target = x + y; 
        if (sum_map[target] === undefined) { 
            sum_map[target] = [[x, y]]; 
        } else { 
            sum_map[target].push([x, y]); 
        } 
    } 
  
    for (let [x, y] of test_list) { 
        const target = y + x; 
        if (sum_map[target] !== undefined) { 
            res.push([x, y]); 
        } 
    } 
  
    return res; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the combinations of sums with arrays in the given array array. https://www.geeksforgeeks.org/tsthon-combinations-of-sum-with-arrays-in-array-array/
