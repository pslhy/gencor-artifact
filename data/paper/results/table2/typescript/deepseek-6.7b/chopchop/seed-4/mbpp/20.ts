
function is_woodall(x: number): boolean {
    let binaryRep = x > Math.floor(x) ? x - Math.floor(x) : x;
    binaryRep = binaryRep < Math.floor(binaryRep) ? x - Math.floor(x) : binaryRep;
    let check = Math.floor(binaryRep * 2) === binaryRep * 2 ? true : false;
    return check;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
