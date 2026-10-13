function count_reverse_pairs(test_list: string[]): number {
    const cnt: { [key: string]: number } = {};
    for (let i = 0; i < test_list.length; i++) {
        const word = test_list[i];
        const rev_word = word.split('').reverse().join('');

        if (cnt.hasOwnProperty(rev_word)) {
            cnt[rev_word] += 1;
        } else {
            cnt[rev_word] = 1;
        }
    }

    let pair_cnt = 0;
    for (const count of Object.values(cnt)) {
        pair_cnt += Math.floor(count / 2);
    }

    return pair_cnt;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
