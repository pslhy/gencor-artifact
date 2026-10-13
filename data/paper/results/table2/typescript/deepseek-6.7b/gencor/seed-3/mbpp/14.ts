
function find_Volume(l: number, b: number, h: number): number {
    let area_triangle = 0.5 * l * b;
    let volume = area_triangle * h;
    return volume;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the volume of a triangular prism.
