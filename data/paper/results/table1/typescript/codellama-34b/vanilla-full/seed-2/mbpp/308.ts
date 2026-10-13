function large_product(nums1: number[], nums2: number[], N: number): number[] {
    let result = [];
    for (let i = 0; i < N; i++) {
        let max = 0;
        for (let j = 0; j < nums1.length; j++) {
            for (let k = 0; k < nums2.length; k++) {
                let product = nums1[j] * nums2[k];
                if (product > max) {
                    max = product;
                }
            }
        }
        result.push(max);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
