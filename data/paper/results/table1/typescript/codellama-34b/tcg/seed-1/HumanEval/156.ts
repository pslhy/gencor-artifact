function int_to_mini_roman(number: number): string {
    const RomanNumerals = ['I', 'V', 'X', 'L', 'C', 'D', 'M'];
    let result = "";
    let thousands = Math.floor(number / 1000);
    number %= 1000;
    let hundreds = Math.floor(number / 100);
    number %= 100;
    let tens = Math.floor(number / 10);
    let ones = number % 10;

    for (let i = 0; i < thousands; i++) {
        result += "M";
    }
    for (let i = 0; i < hundreds; i++) {
        if (tens < 4) {
            result += "C";
        } else if (tens === 4 || tens === 9) {
            result += "CD";
            tens = 0;
        } else {
            result += "D";
        }
    }
    for (let i = 0; i < tens; i++) {
        if (ones < 4) {
            result += "X";
        } else if (ones === 4 || ones === 9) {
            result += "XL";
            ones = 0;
        } else {
            result += "L";
        }
    }
    for (let i = 0; i < ones; i++) {
        if (i % 5 === 0) {
            result += "V";
        } else {
            result += "I";
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a positive integer, obtain its roman numeral equivalent as a string,
//     and return it in lowercase.
//     Restrictions: 1 <= num <= 1000
//     Examples:
//     >>> int_to_mini_roman(19)
//     "xix"
//     >>> int_to_mini_roman(152)
//     "clii"
//     >>> int_to_mini_roman(426)
//     "cdxxvi"