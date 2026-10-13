function right_angle_triangle(a: number, b: number, c: number): boolean {
    const angles = calculate_angles(a, b, c);
    return angles.a > 0 && angles.b > 0 && angles.c > 0;
}

function calculate_angles(a: number, b: number, c: number): { a: number, b: number, c: number } {
    const cos_a = (b * b + c * c - a * a) / (2 * b * c);
    const cos_b = (a * a + c * c - b * b) / (2 * a * c);
    const cos_c = (a * a + b * b - c * c) / (2 * a * b);
    return {
        a: Math.acos(cos_a),
        b: Math.acos(cos_b),
        c: Math.acos(cos_c)
    };
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given the lengths of the three sides of a triangle. Return true if the three
//     sides form a right-angled triangle, false otherwise.
//     A right-angled triangle is a triangle in which one angle is right angle or
//     90 degree.
//     Example:
//     >>> right_angle_triangle(3, 4, 5)
//     true
//     >>> right_angle_triangle(1, 2, 3)
//     false
