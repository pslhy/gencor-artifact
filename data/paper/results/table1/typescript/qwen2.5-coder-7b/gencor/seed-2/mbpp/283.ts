
function validate(n: number): boolean { 
    const digitCounts = new Array(10).fill(0);
    let num = Math.abs(n);
    
    while (num > 0) {
        const digit = num % 10;
        if (digitCounts[digit] > 0) {
            return false;
        }
        digitCounts[digit]++;
        num = Math.floor(num / 10);
    }
    return true;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
