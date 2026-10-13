
function is_Diff(n: number): boolean { 
    let sumEven = 0; 
    let sumOdd = 0; 
    let isPositive = n >= 0; 
    n = Math.abs(n); 
    while (n > 0) { 
        let r = n % 10; 
        if (isPositive) { 
            sumOdd += r; 
        } else { 
            sumEven += r; 
        } 
        n = Math.floor(n / 10); 
        isPositive = !isPositive; 
    } 
    if ((sumOdd - sumEven) % 11 === 0) { 
        return true; 
    } 
    return false; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
