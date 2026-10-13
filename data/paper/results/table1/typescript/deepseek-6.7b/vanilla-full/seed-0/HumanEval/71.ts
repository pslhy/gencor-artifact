function triangle_area(a: number, b: number, c: number): number {
    if (a < b + c && b < a + c && c < a + b) {
        let s = (a + b + c) / 2;
        let area = Math.sqrt(s * (s - a) * (s - b) * (s - c));
        return Math.round(area * 100) / 100;
    } else {
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
