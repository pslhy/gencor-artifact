function right_angle_triangle(a: number, b: number, c: number): boolean {
  if(a*a + b*b === c*c) {
    return true;
  } else {
    return false;
  }
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
