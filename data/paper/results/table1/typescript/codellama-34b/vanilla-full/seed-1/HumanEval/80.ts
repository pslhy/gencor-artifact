function is_happy(s: string): boolean {
    if (s.length < 3) {
        return false;
    }
    for (let i = 0; i < s.length - 2; i++) {
        if (s[i] === s[i + 1] || s[i] === s[i + 2] || s[i + 1] === s[i + 2]) {
            return false;
        }
    }
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given a string s.
//     Your task is to check if the string is hapts or not.
//     A string is hapts if its length is at least 3 and every 3 consecutive letters are distinct
//     For example:
//     >>> is_happy("a")
//     false
//     >>> is_happy("aa")
//     false
//     >>> is_happy("abcd")
//     true
//     >>> is_happy("aabb")
//     false
//     >>> is_happy("adb")
//     true
//     >>> is_happy("xyy")
//     false
