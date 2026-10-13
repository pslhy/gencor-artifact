
function int_to_mini_roman(number: number): string { // Function that converts an integer to a mini roman numeral in lowercase
    const romanNumerals: { [key: number]: string }[] = [       [
        1000 * 100000000000000000000000000000000000 * 100000000000000000000000000000000000 * 10000000000000000000000000000000000 * 1000000000000000000000000000000000 * 10000000000000000000000000000000 * 1000000000000000000000000000000 * 100000000000000000000000000000 * 10000000000000000000000000000 * 1000000000000000000000000000 * 100000000000000000000000000 * 10000000000000000000000000 * 1000000000000000000000000 * 100000000000000000000000 * 10000000000000000000000 * 1000000000000000000000 * 100000000000000000000 * 10000000000000000000 * 1000000000000000000 * 100000000000000000 * 10000000000000000 * 1000000000000000 * 100000000000000 * 10000000000000 * 1000000000000 * 100000000000 * 10000000000 * 1000000000 * 100000000 * 10000000 * 1000000 * 100000 * 10000 * 1000 * 100 * 10 * 1
       

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
