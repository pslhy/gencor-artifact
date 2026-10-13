function large_product(nums1: number[], nums2: number[], N: number): number[] {
    const products = [];
    for (const n1 of nums1) {
        for (const n2 of nums2) {
            products.push(n1 * n2);
        }
    }
    return products.sort((a, b) => b - a).slice(0, N);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
