function string_xor(a: string, b: string): string {
    let result = "";
    for (let i = 0; i < a.length; i++) {
        let a_char = a.charAt(i);
        let b_char = b.charAt(i);
        if (a_char === '1' && b_char === '1') {
            result += "1";
        } else {
            result += "0";
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Input are two strings a and b consisting only of 1s and 0s.
//     Perform binary XOR on these inputs and return result also as a string.
//     >>> string_xor("010", "110")
//     "100"
