function get_pairs_count(arr: number[], sum: number): number {
    let map: { [key: number]: number } = {};
    let count = 0;

    for (let num of arr) {
        if (map[sum - num]) {
            count += map[sum - num];
        }
        if (map[num]) {
            map[num]++;
        } else {
            map[num] = 1;
        }
    }
    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input an array of numbers and the sum,
