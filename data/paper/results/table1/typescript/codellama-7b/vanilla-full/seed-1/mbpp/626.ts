function triangle_area(r: number): number | undefined {
    const area = 0.5 * Math.sqrt(3) * r * r;
    if (area <= 0) return undefined; // invalid input
    return area;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
