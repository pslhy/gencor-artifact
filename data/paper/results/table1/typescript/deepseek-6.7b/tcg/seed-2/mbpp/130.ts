function max_occurrences(nums: number[]): number {
    let counts = new Map<number, number>();
    for (let num of nums) {
        if (counts.has(num)) {
            counts.set(num, counts.get(num)! + 1);
        } else {
            counts.set(num, 1);
        }
    }
    let max_count = 0;
    let max_num: number;
    for (let [num, count] of counts.entries()) {
        if (count > max_count) {
            max_count = count;
            max_num = num;
        }
    }
    return max_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.