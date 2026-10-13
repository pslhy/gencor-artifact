function pancake_sort(nums: number[]): number[] {    
    let count = nums.length;
    while (count > 1) {
        let maxIndex = nums.indexOf(Math.max(...nums.slice(0, count)));
        
        if (maxIndex != count - 1) { 
            nums = [...nums.slice(0, maxIndex+1).reverse(), ...nums.slice(maxIndex+1)].reverse();
        }
        count--;
    }
    return nums;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of elements.
