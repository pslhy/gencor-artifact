function solve(s: string): string {
    let reversed = '';
    for (let i = 0; i < s.length; i++) {
        if (s[i].match(/[a-z]/)) {
            reversed += s[i].toUpperCase();
        } else if (s[i].match(/[A-Z]/)) {
            reversed += s[i].toLowerCase();
        } else {
            reversed += s[i];
        }
    }
    if (reversed === '') {
        return s.split('').reverse().join('');
    }
    return reversed;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a string s.
//     if s[i] is a letter, reverse its case from lower to upper or vise versa,
//     otherwise keep it as it is.
//     If the string contains no letters, reverse the string.
//     The function should return the resulted string.
//     Examples
//     >>> solve("1234")
//     "4321"
//     >>> solve("ab")
//     "AB"
//     >>> solve("#a@C")
//     "#A@c"
