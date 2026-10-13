function rearrange_bigger(n: number): any {
    let strN = n.toString();
    let digits = strN.split('');
    let length = digits.length;
    if (length === 1) {
        return ++n;
    }
    for (let i = 0; i < length - 1; i++) {
        for (let j = i + 1; j < length; j++) {
            if (digits[i] < digits[j]) {
                let temp = digits[i];
                digits[i] = digits[j];
                digits[j] = temp;
                break;
            }
        }
    }
    return +digits.join('');
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
