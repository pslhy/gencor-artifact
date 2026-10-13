
function parabola_directrix(a: number, b: number, c: number): number {
    // The formula for the directrix of a parabola given by ax^2 + bx + c is x = -b/2a
    return -b / (2 * a);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
