function catalan_number(num: number): number {
    let result = 0;
    for (let i = 0; i < num; i++) {
        let inner_num = catalan_number(i);
        if (inner_num > 0) {
            result += Math.pow(4, num - i - 1) * inner_num;
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
