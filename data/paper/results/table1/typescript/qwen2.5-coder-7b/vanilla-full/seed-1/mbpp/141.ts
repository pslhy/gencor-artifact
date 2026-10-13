function pancake_sort(nums: number[]): number[] { 
    function flip(arr: number[], i: number): number[] { 
        let start = 0; 
        while (start < i) { 
            let temp = arr[start]; 
            arr[start] = arr[i]; 
            arr[i] = temp; 
            start++; 
            i--; 
        } 
        return arr; 
    } 

    let size = nums.length; 
    for (let count = size; count > 0; count--) { 
        let mi = 0, i; 
        for (i = 1; i < count; i++) { 
            if (nums[i] > nums[mi]) { 
                mi = i; 
            } 
        } 
        if (mi != count - 1) { 
            flip(nums, mi); 
            flip(nums, count - 1); 
        } 
    } 
    return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
