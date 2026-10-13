function count_reverse_pairs(test_list: string[]): number {
    let count = 0;
    const map = new Map<string, number>();

    for (let i=0; i<test_list.length; i++) {
        const str = test_list[i];
        const rev = str.split('').reverse().join('');
        
        if (map.has(rev)) {
            count += map.get(rev)!;
            map.set(str, (map.get(str) || 0) + 1);
        } else {
            map.set(str, 1);
        }
    }

    return count;
}

console.log(count_reverse_pairs(["abc","cba","bca","bac","x","xay"])); // Output: 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
