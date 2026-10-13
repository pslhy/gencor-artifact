
function parabola_directrix(a: number, b: number, c: number): number { 
    // The standard form of a parabola is ax^2 + bx + c = 0
    // The directrix of a parabola is given by the formula: y = c - (b^2 + 1) / (4a)
    return c - (Math.pow(b, 2) + 1) / (4 * a);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
