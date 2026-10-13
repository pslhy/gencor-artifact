function find_Rotations(str: string): number {
    let temp = str + str;
    let len = str.length;
    for(let i = 1; i <= len; i++) {
        let substring = temp.substr(i, len);
        if (substring === str) {
            return i;
        }
    }
    return len;
}
console.log(find_Rotations("geeks")) // Output: 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the minimum number of rotations (greater than 0) required to get the same string.
