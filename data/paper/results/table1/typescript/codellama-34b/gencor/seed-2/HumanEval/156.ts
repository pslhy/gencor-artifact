
function int_to_mini_roman(number: number): string {
    let output = '';
    while (number > 0) {
        if (number >= 100) {
            output += 'c';
            number -= 100;
        } else if (number >= 50) {
            output += 'l';
            number -= 50;
        } else if (number >= 40) {
            output += 'xl';
            number -= 40;
        } else if (number >= 10) {
            output += 'x';
            number -= 10;
        } else if (number == 9) {
            output += 'ix';
            number = 0;
        } else if (number >= 5) {
            output += 'v';
            number -= 5;
        } else if (number == 4) {
            output += 'iv';
            number = 0;
        } else {
            output += 'i';
            number -= 1;
        }
    }
    return output;
}

const input = 19;
console.log(int_to_mini_roman(input)); // xix

const input = 152;
console.log(int_to_mini_roman(input)); // clii

const input = 426;
console.log(int_to_mini_roman(input)); // cdxxvi

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
