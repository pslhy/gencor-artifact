function parabola_directrix(a: number, b: number, c: number): number { 
    return ((4 * a * c) - (b * b) + 1) / (4 * a); 
}

// Example usage
const directrix = parabola_directrix(1, 2, 1); 
console.log(`The directrix of the parabola is y=${directrix}`);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
