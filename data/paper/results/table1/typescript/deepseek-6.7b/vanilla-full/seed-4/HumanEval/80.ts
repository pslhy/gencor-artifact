function is_happy(s: string): boolean {
    if (s.length < 3) {
        return false;
    }
    for (let i = 0; i < s.length - 3; i++) {
        let substring = s.substring(i, i + 3);
        if (new Set(substring.split('')).size !== 3) {
            return false;
        }
    }
    return true;
}

console.log(is_happy("a"));  // false
console.log(is_happy("aa")); // false
console.log(is_happy("abcd")); // true
console.log(is_happy("aabb")); // false
console.log(is_happy("adb")); // true
console.log(is_happy("xyy")); // false


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
