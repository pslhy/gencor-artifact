function find_Odd_Pair(A: number[], N: number): number {
    let cnt = Array(32).fill(0);
    for(let i = 0; i < N; i ++) {
        for(let j = 0; j < 32; j ++) {
            if ((A[i] & (1 << j)) != 0) cnt[j] += 1;
        }
    }
    let odd = 0;
    for(let i = 0; i < N; i ++) {
        let sum = 0;
        for(let j = 0; j < 32; j ++) {
            if ((A[i] & (1<<j)) != 0) {
                sum += j*cnt[j] - (N-i-1);
            } else {
                sum += i - (N - cnt[j]);
            }
        }
        if (sum % 2 == 1) odd += 1;
    }
    return odd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of pairs whose xor value is odd.
