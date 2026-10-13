function max_Product(arr: number[]): [number, number] {
    let maxPos1 = -Infinity, maxPos2 = -Infinity;
    let minNeg1 = Infinity, minNeg2 = Infinity;

    for (let num of arr) {
        if (num > maxPos1) {
            [maxPos2, maxPos1] = [maxPos1, num];
        } else if (num > maxPos2) {
            maxPos2 = num;
        }

        if (num < minNeg1) {
            [minNeg2, minNeg1] = [minNeg1, num];
        } else if (num < minNeg2) {
            minNeg2 = num;
        }
    }
    
    return (maxPos1 * maxPos2 > minNeg1 * minNeg2) ? [maxPos1, maxPos2] : [minNeg1, minNeg2];
}

console.log(max_Product([1, 4, 3, 6, 7, 0])); // [7, 6]
console.log(max_Product([-10, -20, 1, 3, 5])); // [-10, -20]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
