function big_diff(nums: number[]): number {
    let max = nums[0];
    let min = nums[0];
    
    for(let i = 0; i < nums.length; i++){
        if(nums[i] > max) {
            max = nums[i];
        }
        if(nums[i] < min) {
            min = nums[i];
        }
    }
    
    return max - min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the difference between largest and smallest value in a given array.
