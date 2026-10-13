function validate(n: number): boolean {
    const digitCounts = new Map<number, number>();
    
    // Count the frequency of each digit
    let absN = Math.abs(n);
    while (absN > 0) {
        const digit = absN % 10;
        digitCounts.set(digit, (digitCounts.get(digit) || 0) + 1);
        absN = Math.floor(absN / 10);
    }
    
    // Check if the frequency of each digit is less than or equal to the digit itself
    for (const [digit, count] of digitCounts) {
        if (count > digit) {
            return false;
        }
    }
    
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
