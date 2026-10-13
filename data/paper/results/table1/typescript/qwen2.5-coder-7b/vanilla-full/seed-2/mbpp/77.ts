function is_Diff(n: number): boolean { 
    let absVal = Math.abs(n); 
    let lastDigit = absVal % 10; 
    while (absVal > 0) {
        absVal = Math.floor(absVal / 10); 
        lastDigit = lastDigit * 2 - absVal % 10; 
        absVal = Math.floor(absVal / 10); 
    } 
    return (lastDigit % 11 === 0); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
