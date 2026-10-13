
function circular_shift(x: number, shift: number): string { 
    let digits = x.toString(); 
    let n = digits.length; 

    if (shift >= n) {
        return digits.split('').reverse().join('');
    } 

    shift = shift % n; 
    return digits.slice(-shift) + digits.slice(0, -shift); 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Circular shift the digits of the integer x, shift the digits right by shift
//     and return the result as a string.
//     If shift > number of digits, return digits reversed.
//     >>> circular_shift(12, 1)
//     "21"
//     >>> circular_shift(12, 2)
//     "12"
