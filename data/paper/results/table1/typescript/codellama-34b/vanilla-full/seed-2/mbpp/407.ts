function rearrange_bigger(n: number): any {
    let result = 0;
    for (let i = 9; i > 0; i--) {
        const x = n % 10;
        if (x !== i && n - x > result) {
            result += i;
            n -= x;
        }
    }
    if (result === 0) return -1;
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
