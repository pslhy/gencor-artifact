function odd_length_sum(arr: number[]): number {
    let sum = 0;
    let n = arr.length;

    for (let i = 0; i < n; i++) {
        let start = 0;
        let end = i + 1;
        while (end <= n) {
            sum += arr.slice(start, end).reduce((a, b) => a + b, 0);
            start += 2;
            end += 2;
        }
    }

    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
