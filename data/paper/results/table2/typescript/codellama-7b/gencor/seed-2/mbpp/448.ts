
function cal_sum(n: number): number {
    let result = 0;
    for (let i = 1; i <= n; i++) {
        let periRnums = '';
        for (let j = 1; j <= i; j++) {
            periRnums += '9';
        }
        result += Number(periRnums);
    }
    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the sum of perrin numbers.
