function count_reverse_pairs(test_list: string[]): number {
    let cnt = 0;
    let freq = {};

    for(let i=0; i<test_list.length; i++) {
        test_list[i] = test_list[i].split('').sort().join('');
        if(freq.hasOwnProperty(test_list[i])) {
            cnt += freq[test_list[i]];
            freq[test_list[i]] += 1;
        } else {
            freq[test_list[i]] = 1;
        }
    }
    
    return cnt;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
