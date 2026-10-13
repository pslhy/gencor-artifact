function generate_integers(a: number, b: number): number[] {
    const result: number[] = [];

    for (const digit of String(Math.max(a, b))) {
        if (digit.isEven()) {
            result.push(digit.parseInt());
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given two positive integers a and b, return the even digits between a
//     and b, in ascending order.
//     For example:
//     >>> generate_integers(2, 8)
//     [2, 4, 6, 8]
//     >>> generate_integers(8, 2)
//     [2, 4, 6, 8]
//     >>> generate_integers(10, 14)
//     []
