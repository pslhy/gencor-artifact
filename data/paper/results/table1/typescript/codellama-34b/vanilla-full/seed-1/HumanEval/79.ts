function decimal_to_binary(decimal: number): string {
    let binaryString = '';
    let remainder = decimal;
    let counter = 0;
    while (remainder > 0) {
        let currentBinary = remainder % 2;
        remainder = (remainder - currentBinary) / 2;
        binaryString = '0' + binaryString;
        if (currentBinary === 1) {
            binaryString = '1' + binaryString;
            counter++;
        }
    }
    return 'db' + binaryString + 'db';
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You will be given a number in decimal form and your task is to convert it to
//     binary format. The function should return a string, with each character representing a binary
//     number. Each character in the string will be '0' or '1'.
//     There will be an extra couple of characters 'db' at the beginning and at the end of the string.
//     The extra characters are there to help with the format.
//     Examples:
//     >>> decimal_to_binary(15)
//     "db1111db"
//     >>> decimal_to_binary(32)
//     "db100000db"
