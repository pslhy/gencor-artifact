function cycpattern_check(a: string, b: string): boolean {
    if (a.length < b.length) return false;
    let l = a.length;
    let d = (new Array(l * 2)).fill(0); 
    let j = 0; 

    for (let i = 1; i < l; i++) {
        while (j > 0 && b[i % l] != b[j]) {
            j = d[j - 1];
        }
        if (b[i % l] == b[j]) {
            j++;
        }
        d[i % l] = j;
    }

    j = 0;
    for (let i = 0; i < l * 2; i++) {
        while (j > 0 && a[i % l] != b[j]) {
            j = d[j - 1];
        }
        if (a[i % l] == b[j]) {
            j++;
        }
        if (j == l) {
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
