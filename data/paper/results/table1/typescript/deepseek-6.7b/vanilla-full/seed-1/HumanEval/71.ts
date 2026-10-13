function triangle_area(a: number, b: number, c: number): number {
    // Check if the three sides form a valid triangle
    if (a + b > c && a + c > b && b + c > a) {
        // Calculate the semi-perimeter
        const s = (a + b + c) / 2;
        // Calculate the area using Heron's formula
        const area = Math.sqrt(s * (s - a) * (s - b) * (s - c));
        // Return the area, rounding to 2 decimal places
        return Math.round(area * 100) / 100;
    } else {
        // Return -1 if the sides do not form a valid triangle
        return -1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given the lengths of the three sides of a triangle. Return the area of
//     the triangle rounded to 2 decimal points if the three sides form a valid triangle.
//     Otherwise return -1
//     Three sides make a valid triangle when the sum of any two sides is greater
//     than the third side.
//     Example:
//     >>> triangle_area(3, 4, 5)
//     6.0
//     >>> triangle_area(1, 2, 10)
//     -1
