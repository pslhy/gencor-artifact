function count_reverse_pairs(test_list: string[]): number {
    let map: { [str: string]: number } = {};
    let count: number = 0;

    for (let item of test_list) {
        let str: string = item;
        let rev_str: string = item.split('').reverse().join('');

        if (map[rev_str] !== undefined) {
            count += map[rev_str];
        }

        if (map[str] === undefined) {
            map[str] = 1;
        } else {
            map[str] += 1;
        }
    }

    return count;
}

console.log(count_reverse_pairs(["abc", "cba", "abcd", "dcba", "efg", "feg"])); // Output: 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count the pairs of reverse strings in the given string array. https://www.geeksforgeeks.org/tsthon-program-to-count-the-pairs-of-reverse-strings/
