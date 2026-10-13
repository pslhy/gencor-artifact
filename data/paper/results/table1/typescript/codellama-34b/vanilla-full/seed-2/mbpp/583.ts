function catalan_number(num: number): number {
    if (num <= 1) {
        return 1;
    }
    return combi(2 * num, num) / (num + 1);
}

function combi(n: number, k: number): number {
    if (k > n) {
        return 0;
    }
    if (k == 0 || k == n) {
        return 1;
    }
    return combi(n - 1, k - 1) + combi(n - 1, k);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
