function validate(n: number): boolean {    
    const countDigits = (num: number): { [key: string]: number } => {
        const result: { [key: string]: number } = {};
        const digits = num.toString().split('');
        digits.forEach(digit => {
            if (result[digit]) {
                result[digit]++;
            } else {
                result[digit] = 1;
            }
        });
        return result;
    };

    const digitCounts = countDigits(n);
    for (const digit of Object.keys(digitCounts)) {
        if (digitCounts[digit] > parseInt(digit)) {
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