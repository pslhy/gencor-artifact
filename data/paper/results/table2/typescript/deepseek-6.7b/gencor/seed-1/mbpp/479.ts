
function first_Digit(n: number): number {
    n = Math.abs(n); // convert the number to positive if necessary (as negative numbers have leading zeros before the decimal point)
    let digits = n.toString().split(''); // convert number to string and split into array of digits
    for (let i = 0; i < digits.length; i++) {
        if (!isNaN(parseInt(digits[i]))) {
            return parseInt(digits[i]); // return the first digit
        }
    }
    return NaN; // return NaN if no digits were found
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first digit of a given number.
