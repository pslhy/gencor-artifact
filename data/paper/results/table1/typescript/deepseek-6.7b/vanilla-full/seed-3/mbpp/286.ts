function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    let b: number[] = [];
    for (let i = 0; i < k; i++) {
        b = b.concat(a);
    }

    let globalMax: number  = -Infinity;
    let localMax: number = 0;

    for (let i = 0; i < b.length; i++) {
        localMax = Math.max(b[i], localMax + b[i]);
        if (localMax > globalMax) {
            globalMax = localMax;
        }
    }

    return globalMax;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
