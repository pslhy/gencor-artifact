function large_product(nums1: number[], nums2: number[], N: number): number[] {
    let nums1List = nums1.map(n => [n, -n * n]).sort((a, b) => b[1] - a[1]);
    let nums2List = nums2.map(n => [n, -n * n]).sort((a, b) => b[1] - a[1]);
    let result: number[] = [];
    let i = 0, j = nums2.length - 1;
    while (i < Math.min(N, nums1.length) && j >= 0) {
        if (nums1List[i][1] * nums2List[j][0] > nums1List[i][0] * nums2List[j][1]) {
            result.push(nums1List[i][0] * nums2List[j][0]);
            j--;
        } else {
            result.push(nums1List[i][0] * nums2List[j][0]);
            i++;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
