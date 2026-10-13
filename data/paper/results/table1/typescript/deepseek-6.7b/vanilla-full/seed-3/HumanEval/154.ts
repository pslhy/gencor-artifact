function cycpattern_check(a: string, b: string): boolean {
    let bLen = b.length;
    let bRotation = b;
    for (let i = 0; i < bLen; i++) {
        bRotation = bRotation[bLen - 1] + bRotation.substring(0, bLen - 1);
        if (a.indexOf(bRotation) !== -1) {
            return true;
        }
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
//     >>> cycpattern_check("abcd", "abd")
//     false
//     >>> cycpattern_check("hello", "ell")
//     true
//     >>> cycpattern_check("whassup", "psus")
//     false
//     >>> cycpattern_check("abab", "baa")
//     true
//     >>> cycpattern_check("efef", "eeff")
//     false
//     >>> cycpattern_check("himenss", "simen")
//     true
