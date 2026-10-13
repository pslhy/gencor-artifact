function iscube(a: number): boolean {
    let num = Math.round(Math.pow(a, (1 / 3)));
    return a === 0 || num * num * num === Math.abs(a);
}

console.log(iscube(1));    // true
console.log(iscube(2));    // false
console.log(iscube(-1));   // true
console.log(iscube(64));   // true
console.log(iscube(0));    // true
console.log(iscube(180));  // false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes an integer a and returns true
//     if this ingeger is a cube of some integer number.
//     Note: you may assume the input is always valid.
//     Examples:
//     >>> iscube(1)
//     true
//     >>> iscube(2)
//     false
//     >>> iscube(-1)
//     true
//     >>> iscube(64)
//     true
//     >>> iscube(0)
//     true
//     >>> iscube(180)
//     false
