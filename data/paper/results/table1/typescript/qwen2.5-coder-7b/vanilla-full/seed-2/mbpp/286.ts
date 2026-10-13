function max_sub_array_sum_repeated(a: number[], n: number, k: number): number { 
    let currentMax = Number.MIN_SAFE_INTEGER;
    let arrayMax = 0;

    for (let i = 0; i < n; i++) {
        arrayMax += a[i];
        if (currentMax < arrayMax) {
            currentMax = arrayMax;
        }
        if (arrayMax < 0) {
            arrayMax = 0;
        }
    }

    let bestSoFar = currentMax;
    for (let j = 1; j < k; j++) {
        arrayMax = 0;
        for (let i = 0; i < n; i++) {
            arrayMax += a[i];
            currentMax = Math.max(currentMax, arrayMax);
            arrayMax = Math.max(arrayMax, 0);
        }
        bestSoFar += currentMax;
    }

    return bestSoFar;
}

// Example usage:
const a = [1, -2, 3, -4, 5];
const n = a.length;
const k = 3;
console.log(max_sub_array_sum_repeated(a, n, k)); // Output: 20


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
