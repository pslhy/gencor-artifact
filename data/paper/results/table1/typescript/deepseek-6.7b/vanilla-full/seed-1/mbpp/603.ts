function get_ludic(n: number): number[] {
    let res: number[] = [];
    for (let i = 2; i <= n; i++){
        if (!res[i]) {
            res[i] = i;
            if (i <= n - i) {
                res[i * 2] = i;
            }
            if (i <= (n - i) / 3) {
                res[i * 3] = i;
            }
            if (i <= (n - i) / 5) {
                res[i * 5] = i;
            }
        }
    }
    return res.filter(Boolean);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get all lucid numbers smaller than or equal to a given integer.
