function int_to_mini_roman(number: number): string {
    const digits = String(number).split("").map(i => Number(i));
    const roman = ["i", "x", "c", "m"];
    const five = ["v", "l", "d"];
    let result = "";
    for (let i = 0; i < digits.length; i++) {
        if (digits[i] < 4) {
            result += roman[i].repeat(digits[i]);
        } else if (digits[i] === 4) {
            result += roman[i] + five[i];
        } else if (digits[i] === 5) {
            result += five[i];
        } else if (digits[i] < 9) {
            result += five[i] + roman[i].repeat(digits[i] - 5);
        } else {
            result += roman[i] + roman[i + 1];
        }
    }
    return result;
}

console.log(int_to_mini_roman(19))  // Output: "xix"
console.log(int_to_mini_roman(152))  // Output: "clii"
console.log(int_to_mini_roman(426))  // Output: "cdxxvi"


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
