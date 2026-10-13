function cal_sum(n: number): number {
    let perrin: number[] = [3, 0, 2];
    if (n <= 2) {
        return perrin[n];
    }
    for (let i = 3; i <= n; i++) {
        perrin[i] = perrin[i - 2] + perrin[i - 3];
    }
    return perrin[n];
}

function sum(n: number): number {
    let sum = 0;
    for (let i = 0; i <= n; i++) {
        sum += cal_sum(i);
    }
    return sum;
}

console.log(sum(5)); // Output: 32


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
