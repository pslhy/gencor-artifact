function comb_sort(nums: number[]): number[] {
    let gap: number = nums.length;
    let swapped: boolean = true;

    while (gap !== 1 || swapped === true) {
        gap = Math.floor(gap / 1.3);
        if (gap < 1) {
            gap = 1;
        }
        swapped = false;
        for (let i = 0; i + gap < nums.length; i++) {
            if (nums[i] > nums[i + gap]) {
                const temp = nums[i];
                nums[i] = nums[i + gap];
                nums[i + gap] = temp;
                swapped = true;
            }
        }
    }
    return nums;
};

function quick_sort(nums: number[]): number[] {
    if (nums.length <= 1) {
        return nums;
    }
    const pivot = nums[nums.length - 1];
    const left = [];
    const right = [];
    for (let i = 0; i < nums.length - 1; i++) {
        if (nums[i] < pivot) {
            left.push(nums[i]);
        } else {
            right.push(nums[i]);
        }
    }
    return [...quick_sort(left), pivot, ...quick_sort(right)];
};

function bubble_sort(nums: number[]): number[] {
    for (let i = 0; i < nums.length; i++) {
        for (let j = 0; j < nums.length - i - 1; j++) {
            if (nums[j] > nums[j + 1]) {
                const temp = nums[j];
                nums[j] = nums[j+1];
                nums[j+1] = temp;
            }
        }
    }
    return nums;
};


function insertion_sort(nums: number[]): number[] {
    for (let i = 1; i < nums.length; i++) {
        let key = nums[i];
        let j = i - 1;
        while (j >= 0 && nums[j] > key) {
            nums[j + 1] = nums[j];
            j = j - 1;
        }
        nums[j + 1] = key;
    }
    return nums;
};


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
