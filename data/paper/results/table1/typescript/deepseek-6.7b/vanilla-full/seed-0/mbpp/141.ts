function pancake_sort(nums: number[]): number[] {
    const flipped = (start: number, end: number) => {
        while (start < end) {
            let temp = nums[start];
            nums[start] = nums[end];
            nums[end] = temp;
            start++;
            end--;
        }
    }

    const largest = (end: number) => {
        let maxD = 0;
        for (let i = 0; i <= end; i++) {
            if (nums[i] > nums[maxD]) {
                maxD = i;
            }
        }
        return maxD;
    }

    for (let i = nums.length; i > 0; i--) {
        let maxD = largest(i);
        if (maxD != i - 1) {
            flipped(0, maxD);
            flipped(0, i - 1);
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
