function count_reverse_pairs(test_list: string[]): number { 
    let res = 0; 
    for (let i of test_list) { 
        for (let j of test_list) { 
            if (j === i.split('').reverse().join('') && i !== j) { 
                res += 1; 
            } 
        } 
    } 
    return Math.floor(res / 2); 
}

// Example usage:
const test_list = ["abc", "bcd", "cbad", "dcba", "abcd"];
const result = count_reverse_pairs(test_list);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/