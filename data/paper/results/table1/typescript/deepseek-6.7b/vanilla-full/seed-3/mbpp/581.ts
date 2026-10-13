function surface_Area(b: number, s: number): number {
    let b_surface_area: number = s * s;
    let l_surface_area: number = 0.5 * 4 * b * s;
    return b_surface_area + l_surface_area;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the surface area of a square tsramid with a given base edge and height.
