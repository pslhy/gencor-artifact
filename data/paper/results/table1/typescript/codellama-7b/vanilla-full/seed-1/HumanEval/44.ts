function change_base(x: number, base: number): string {
    let result = "";
    while (x > 0) {
        result = String(x % base) + result;
        x = Math.floor(x / base);
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Change numerical base of input number x to base.
//     return string representation after the conversion.
//     base numbers are less than 10.
//     >>> change_base(8, 3)
//     "22"
//     >>> change_base(8, 2)
//     "1000"
//     >>> change_base(7, 2)
//     "111"
