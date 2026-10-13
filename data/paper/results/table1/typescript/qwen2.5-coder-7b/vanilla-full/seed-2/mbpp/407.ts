function rearrange_bigger(n: number): any { // Return type can be 'any' as per the prompt, but typically would be a number or null
    let digits = n.toString().split('').map(Number);
    for (let i = digits.length - 2; i >= 0; i--) {
        if (digits[i] < digits[i + 1]) {
            let minGreaterIndex = i + 1;
            for (let j = i + 2; j < digits.length; j++) {
                if (digits[j] > digits[i] && digits[j] < digits[minGreaterIndex]) {
                    minGreaterIndex = j;
                }
            }
            [digits[i], digits[minGreaterIndex]] = [digits[minGreaterIndex], digits[i]];
            let suffix = digits.slice(i + 1).sort((a, b) => a - b);
            return Number(digits.slice(0, i + 1).concat(suffix).join(''));
        }
    }
    return null; // Return null if no bigger number can be formed
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
