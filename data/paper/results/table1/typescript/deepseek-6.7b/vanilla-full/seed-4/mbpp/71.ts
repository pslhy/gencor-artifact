function comb_sort(nums: number[]): number[] {
    let gap: number = nums.length;
    let swapped = false;
    while (gap != 1 || swapped == true){
        gap = Math.floor(gap / 1.3);
        if (gap < 1) {
            gap = 1;
        }
        swapped = false;
        for (let i = 0; i < nums.length - gap; i++){
            if (nums[i] > nums[i + gap]){
                let temp = nums[i];
                nums[i] = nums[i + gap];
                nums[i + gap] = temp;
                swapped = true;
            }
        }
    }
    return nums;
}

let result = comb_sort([4, 2, 3, 5, 1]);
console.log(result); // [1, 2, 3, 4, 5]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
