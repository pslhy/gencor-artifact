function int_to_mini_roman(number: number): string {
    const numeralLookup: { [index: string]: string } = {
        '1': 'i',
        '4': 'iv',
        '5': 'v',
        '9': 'ix',
        '10': 'x',
        '40': 'xl',
        '50': 'l',
        '90': 'xc',
        '100': 'c',
        '400': 'cd',
        '500': 'd',
        '900': 'cm',
        '1000': 'm',
    };
    let roman: string = '';
    let num: number = number;
    const keys: number[] = Object.keys(numeralLookup).sort((a, b) => parseInt(b, 10) - parseInt(a, 10)).map(k => parseInt(k, 10));

    for (let i = 0; i < keys.length; i++) {
        while (num >= keys[i]) {
            num -= keys[i];
            roman += numeralLookup[keys[i].toString()];
        }
    }
    // mini roman numerals have no lowercase equivalents
    return roman;
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
