function validate(n: number): boolean { 
    const digitCount = new Map<number, number>();

    // Count frequency of each digit
    while (n > 0) {
        const digit = n % 10;
        digitCount.set(digit, (digitCount.get(digit) || 0) + 1);
        n = Math.floor(n / 10);
    }

    // Check if frequency of each digit is less than or equal to the digit itself
    for (const [digit, count] of digitCount) {
        if (count > digit) return false;
    }

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
