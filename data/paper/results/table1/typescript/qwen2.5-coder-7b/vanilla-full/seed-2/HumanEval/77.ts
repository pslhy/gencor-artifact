function iscube(a: number): boolean {    
    let absValue = Math.abs(a);
    let cubeRoot = Math.round(Math.pow(absValue, 1/3));
    return Math.pow(cubeRoot, 3) === absValue;
}


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
