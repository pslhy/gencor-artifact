
function cal_sum(n: number): number {
    let sum = 0;
    let perrin: number[] = [3, 0, 2];

    if (n <= 0)
        return 0;
    else if (n <= 3)
        return perrin[n-1];
    else {
        for(let i = 3; i < n; i++) {
            perrin[i] = perrin[i-2] + perrin[i-3];
            sum += perrin[i];
        }
        return sum;
    }
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
