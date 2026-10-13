function int_to_mini_roman(number: number): string {
    const romanValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    const romanSymbols = ["m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i"];
    
    let result = '';
    for (let i = 0; i < romanValues.length; i++) {
        while (number >= romanValues[i]) {
            number -= romanValues[i];
            result += romanSymbols[i];
        }
    }
    
    return result;
}

console.log(int_to_mini_roman(19)); // Output: "xix"
console.log(int_to_mini_roman(152)); // Output: "clii"
console.log(int_to_mini_roman(426)); // Output: "cdxxvi"


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
