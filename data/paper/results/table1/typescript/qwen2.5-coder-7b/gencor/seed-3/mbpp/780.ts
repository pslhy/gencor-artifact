
function find_combinations(test_list: [number, number][]): [number, number][] { 
    let res: [number, number][] = []; 
    for (let i = 0; i < test_list.length; i++) { 
        for (let j = 0; j < test_list[i].length; j++) { 
            for (let k = 0; k < test_list[i][j].toString().length; k++) { 
                res.push([i, parseInt(test_list[i][j].toString()[k])]); 
            } 
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
