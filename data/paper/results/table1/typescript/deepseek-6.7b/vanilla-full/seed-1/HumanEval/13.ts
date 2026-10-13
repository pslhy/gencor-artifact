function greatest_common_divisor(a: number, b: number): number {
    if (!b) {
        return a;
    }

    return greatest_common_divisor(b, a % b);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Return a greatest common divisor of two integers a and b
//     >>> greatest_common_divisor(3, 5)
//     1
//     >>> greatest_common_divisor(25, 15)
//     5
