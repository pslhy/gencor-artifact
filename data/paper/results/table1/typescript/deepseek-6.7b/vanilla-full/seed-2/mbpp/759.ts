function is_decimal(num: string): boolean {
    const regExp = new RegExp('^\\d+\\.\\d{1,2}$');
    return regExp.test(num);
}

console.log(is_decimal("5.23")); // expected true
console.log(is_decimal(".5")); // expected false
console.log(is_decimal("5.")); // expected false
console.log(is_decimal("5.234")); // expected false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether a given string is a decimal number with a precision of 2.
