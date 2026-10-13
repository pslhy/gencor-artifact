function is_Diff(n: number): boolean { 
    let sumEven = 0, sumOdd = 0; 
    let temp = n; 
    let i = 1; 
    while (temp != 0) { 
        if (i % 2 == 0) 
            sumEven += (temp % 10); 
        else
            sumOdd += (temp % 10); 
        temp = Math.floor(temp / 10); 
        i++; 
    } 
    return Math.abs(sumOdd - sumEven) % 11 == 0; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
