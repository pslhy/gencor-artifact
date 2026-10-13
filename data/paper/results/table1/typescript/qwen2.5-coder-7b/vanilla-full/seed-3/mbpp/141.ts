function pancake_sort(nums: number[]): number[] {  
    let curr_size = nums.length;  
    while (curr_size > 1) {  
        let mi = 0;  
        for (let i = 1; i < curr_size; i++) {  
            if (nums[i] > nums[mi]) {  
                mi = i;  
            }  
        }  
        if (mi != curr_size-1) {  
            nums.splice(0, mi, ...nums.splice(mi, 1));  
            nums.splice(0, curr_size, ...nums.splice(curr_size-1, 1));
        }  
        curr_size--;  
    }  
    return nums;  
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
