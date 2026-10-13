function is_Diff(n: number): boolean {
    if (n < 0) return "invalid input";
    let sum = 0;
    for (let i = 0; i < n.toString().length; i++) {
        let digit = parseInt(n.toString()[i]);
        sum += (i % 2 === 0) ? digit : -digit;
    }
    return sum % 11 === 0;
}

function isDivisibleBy11(n: number): boolean {
    if (n == 11 || n == 0) return true;
    if (n < 0) n = -n;
    return is_Diff(n)
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
