
function count_reverse_pairs(test_list: string[]): number { 
    let res = 0; 
    for (let i of test_list) { 
        let rev = i.split('').reverse().join(''); 
        if (test_list.includes(rev)) { 
            res += 1; 
            test_list.splice(test_list.indexOf(rev), 1); 
        } 
    } 
    return res; 
}

// Example usage:
console.log(count_reverse_pairs(["abc", "cba", "bac", "test", "tset"])); // Output: 2
console.log(count_reverse_pairs(["hello", "olleh", "world", "dlrow", "abc"])); // Output: 2
console.log(count_reverse_pairs(["madam", "caret", "debit card", "level", "nurse"])); // Output: 1

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
