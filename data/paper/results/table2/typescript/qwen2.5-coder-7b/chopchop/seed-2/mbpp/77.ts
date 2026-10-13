
function is_Diff(n: number): boolean { 
    let absVal = Math.floor(Math.log2(n)); 
    let length = Math.pow(2, absVal); 
    let lastDigit = n % 10; 
    let remainingNumber = Math.floor(n / 10); 
    let sum = Math.floor(remainingNumber - (lastDigit * length)); 
    return is_Diff(Math.floor(sum / 11)) || (sum % 11 === 0); 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find whether a number is divisible by 11.
