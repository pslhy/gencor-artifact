
function cal_sum(n: number): number {
    let sum = 0;
    for (let i = 1; i <= n; i++) {
        let peri_num = 0;
        if (i % 3 == 1) {
            peri_num = 1;
        } else if (i % 3 == 2) {
            peri_num = 0;
        } else {
            peri_num = -1;
        }
        sum += peri_num;
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
