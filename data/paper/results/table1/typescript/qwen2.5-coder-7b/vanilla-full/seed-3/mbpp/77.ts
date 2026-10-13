function is_Diff(n: number): boolean { 
    let sumEven = 0, sumOdd = 0; 
    let temp = n; 
    let i = 1; 
    while (n > 0) { 
        let digit = n % 10; 
        if (i % 2 == 0) 
            sumEven += digit; 
        else
            sumOdd += digit; 
        i++; 
        n = Math.floor(n / 10); 
    } 
    return (Math.abs(sumEven - sumOdd) % 11 === 0); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
