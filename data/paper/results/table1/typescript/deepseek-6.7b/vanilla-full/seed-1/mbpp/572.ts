function two_unique_nums(nums: number[]): number[] {
    let res: {[key: number]: number} = {};
    for (let num of nums) {
        if (!res[num]) {
            res[num] = 1;
        } else {
            res[num] += 1;
        }
    }
    return Object.keys(res).map(key => { return parseInt(key); });
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to remove duplicate numbers from a given number of arrays.
