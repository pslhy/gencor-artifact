
function count_reverse_pairs(test_list: string[]): number {
    let cnt = 0;
    let freq = new Map();
    
    for (let sub_str of test_list) {
        let sub_str_rev = sub_str.split("").reverse().join("");
        if (!freq.has(sub_str_rev)) {
            freq.set(sub_str, 1);
        } else {
            cnt += freq.get(sub_str_rev);
            freq.set(sub_str, freq.get(sub_str) + 1);
        }
    }
    
    return cnt;
}

console.log(count_reverse_pairs(["abc", "cba", "bca", "bac", "xyz", "zyx", "zxy", "zyx", "xyz"]))  // 4

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
