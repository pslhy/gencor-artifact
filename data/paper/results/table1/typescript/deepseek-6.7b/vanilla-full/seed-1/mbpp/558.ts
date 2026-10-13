function digit_distance_nums(n1: number, n2: number): number {
    let nums1 = n1.toString().split('');
    let nums2 = n2.toString().split('');
    let sum_diff = 0;

    for(let i = 0; i < nums1.length; i++) {
        sum_diff += Math.abs(parseInt(nums1[i]) - parseInt(nums2[i]));
    }

    return sum_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
