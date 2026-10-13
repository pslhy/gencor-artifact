function large_product(nums1: number[], nums2: number[], N: number): number[] {
    let result: number[] = [];
    
    let pairs: [number, number][] = nums1.map((num1) => {
        return nums2.map((num2): [number, number] => [num1, num2]);
    }).reduce((a, b) => a.concat(b), []);
    
    pairs.sort((a, b) => {
        return b[0]*b[1] - a[0]*a[1];
    });
    
    for(let i = 0; i < N; i++) {
        result.push(pairs[i][0] * pairs[i][1]);
    }
    
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
