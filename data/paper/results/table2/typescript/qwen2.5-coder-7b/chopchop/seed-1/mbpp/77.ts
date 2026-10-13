
function is_Diff(n: number): boolean { 
    let sumEven = 0; 
    let sumOdd = 0; 
    let isPositive = n >= 0; 
    n = Math.min(n, -n); 
    let temp: number = n; 

    if (n < 10) {
        return false; 
    }

    while (n > 0) { 
        sumEven += n % 10 * (isPositive? 1 : -1); 
        n = Math.floor(n / 10); 
        sumOdd += n % 10 * (isPositive? 1 : -1); 
        n = Math.floor(n / 10); 
    } 

    return Math.floor(Math.max(sumEven, sumOdd) / 11) === Math.max(sumEven, sumOdd) / 11; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
