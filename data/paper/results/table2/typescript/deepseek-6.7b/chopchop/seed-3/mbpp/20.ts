
function is_woodall(x: number): boolean {
    let b = x;
    while (b > 1) {
        let a = Math.floor(Math.sqrt(b));
        if (a * a != b) return false;
        b = b - a * a;
    }
    return b == 0;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
