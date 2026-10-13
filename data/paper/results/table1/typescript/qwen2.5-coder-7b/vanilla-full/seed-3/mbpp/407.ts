function rearrange_bigger(n: number): any {  
    let digits = n.toString().split('');

    for (let i = digits.length - 2; i >= 0; i--) {
        if (digits[i] < digits[i + 1]) {
            let min_larger_index = digits.length - 1;
            for (let j = digits.length - 1; j > i; j--) {
                if (digits[j] > digits[i] && digits[j] < digits[min_larger_index]) {
                    min_larger_index = j;
                }
            }
            [digits[i], digits[min_larger_index]] = [digits[min_larger_index], digits[i]];
            let remaining_digits = digits.slice(i + 1).sort();
            digits = digits.slice(0, i + 1).concat(remaining_digits);
            return parseInt(digits.join(''));
        }
    }
    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
