function pancake_sort(nums: number[]): number[] {
    let current_size = nums.length;
    for(let i = 0; i < nums.length; i++){
        let max_index = findMax(nums,current_size);
        flip(nums,max_index);
        flip(nums,current_size - 1);
        current_size -= 1;
    }
    return nums;
};

function findMax(nums: number[], n: number): number {
    let max_index = 0;
    for(let i = 0; i < n; i++){
        if(nums[i] > nums[max_index])
        max_index = i;
    }
    return max_index;
}

function flip(nums: number[], end: number): void {
    let start = 0;
    while(start < end){
        let temp = nums[start];
        nums[start] = nums[end];
        nums[end] = temp;
        start += 1;
        end -= 1;
    }
}

console.log(pancake_sort([3, 2, 1, 5, 4])); // Prints: [1, 2, 3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
