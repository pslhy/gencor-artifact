function sector_area(r: number, a: number): number | undefined {
    if (a > 360) return undefined;
    return (a / 360) * Math.PI * Math.pow(r, 2);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return undefined if the angle is larger than 360 degrees.
