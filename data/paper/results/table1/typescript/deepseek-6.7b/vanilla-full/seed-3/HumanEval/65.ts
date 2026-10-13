function circular_shift(x: number, shift: number): string {
    let digits = Math.floor(Math.log10(x))+1;
    if(shift > digits) {
        return x.toString().split('').reverse().join('');
    }
    else {
        let numArr = Array.from(x.toString()).map(Number);
        for(let i = 0; i < shift; i++) {
            numArr.unshift(numArr.pop() as number);
        }
        return numArr.join('');
    }
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
