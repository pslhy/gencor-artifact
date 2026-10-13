
function dif_Square(n: number): boolean {
    let i = 1;
    while (i * i + (i + 1) * (i + 1) <= n) {
        i++;
    }
    return i * i + (i + 1) * (i + 1) === n;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the given number can be represented as the difference of two squares or not.
