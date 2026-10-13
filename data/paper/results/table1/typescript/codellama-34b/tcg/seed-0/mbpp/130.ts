function max_occurrences(nums: number[]): number {
    const freq: { [key: number]: number } = {};
    let max: number = 0;
    let res: number;
    nums.forEach(num => {
        if (!freq[num]) {
            freq[num] = 1;
        } else {
            freq[num]++;
        }
    });
    for (const num of Object.keys(freq)) {
        if (freq[num as number] > max) {
            max = freq[num as number];
            res = num as number;
        }
    }
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.