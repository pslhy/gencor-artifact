function digit_distance_nums(n1: number, n2: number): number {
    let nums1 = n1.toString().split('').map(Number);
    let nums2 = n2.toString().split('').map(Number);
    let sum = 0;
    for (let i = 0; i < Math.max(nums1.length, nums2.length); i++) {
        if (nums1[i] !== undefined && nums2[i] !== undefined) {
            sum += Math.abs(nums1[i] - nums2[i]);
        } else if (nums1[i] === undefined) {
            sum += nums2[i];
        } else if (nums2[i] === undefined) {
            sum += nums1[i];
        }
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
