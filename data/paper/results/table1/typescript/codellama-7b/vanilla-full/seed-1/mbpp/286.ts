function max_sub_array_sum_repeated(a: number[], n: number, k: number): number {
    let max_sum = 0;
    let min_sum = 0;
    for (let i = 0; i < a.length; i++) {
        min_sum += a[i];
        for (let j = i + 1; j < a.length; j++) {
            min_sum += a[j];
            if (min_sum > max_sum) {
                max_sum = min_sum;
            }
        }
        min_sum = 0;
    }
    return k * max_sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
