function count_reverse_pairs(test_list: string[]): number {
    let cnt = 0;
    let freq = new Map<string, number>();
    for (let i = 0; i < test_list.length; i++) {
        let word = test_list[i];
        let rev_word = word.split('').reverse().join('');
        if (freq.has(rev_word)) {
            cnt += freq.get(rev_word)!;
            freq.set(rev_word, freq.get(rev_word)! + 1);
        } else {
            freq.set(word, 1);
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