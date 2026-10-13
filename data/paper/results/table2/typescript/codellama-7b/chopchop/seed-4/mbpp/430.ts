
function parabola_directrix(a: number, b: number, c: number): number {
  if (a == 0 && b == 0 && c == 0) {
    return 0;
  }

  let directrix = -1;
  let discriminant = b * b - 4 * a * c;

  if (discriminant >= 0) {
    let square_root_discriminant = Math.sqrt(discriminant);
    let x1 = (-b + square_root_discriminant) / (2 * a);
    let x2 = (-b - square_root_discriminant) / (2 * a);

    if (x1 >= x2) {
      directrix = 2 * x1 - x2;
    } else {
      directrix = 2 * x2 - x1;
    }
  }

  return directrix;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
