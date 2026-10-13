function count_reverse_pairs(test_list: string[]): number { 
    let res = 0; 
    for (let idx = 0; idx < test_list.length; idx++) { 
        for (let idy = idx + 1; idy < test_list.length; idy++) { 
            if (test_list[idx] === test_list[idy].split('').reverse().join('')) { 
                res += 1; 
            } 
        } 
    } 
    return res; 
} 

// Test 
console.log(count_reverse_pairs(["ab", "ba", "cd", "dc", "ef"])); // Output: 2
console.log(count_reverse_pairs(["abc", "bca", "def", "fed", "ghi"])); // Output: 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
