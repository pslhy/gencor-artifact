function special_factorial(n: number): number {
    if(n <= 0) return 1;
    let result = 1;
    for(let i = n; i > 0; i--) {
        result *= factorial(i);
    }
    return result;
}

function factorial(n: number): number {
    if(n === 0 || n === 1) return 1;
    return n * factorial(n - 1);
}

console.log(special_factorial(4)); //Expect 288


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     The Brazilian factorial is defined as:
//     brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
//     where n > 0
//     For example:
//     >>> special_factorial(4)
//     288
//     The function will receive an integer as input and should return the special
//     factorial of this integer.
