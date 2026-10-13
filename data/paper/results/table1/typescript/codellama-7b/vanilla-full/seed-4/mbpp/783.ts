function rgb_to_hsv(r: number, g: number, b: number): number[] {
  const min: number = Math.min(r, Math.min(g, b));
  const max: number = Math.max(r, Math.max(g, b));
  const v: number = max;
  const c: number = max - min;
  const s: number = max === 0 ? 0 : c / max;
  let h: number;
  if (r === max) {
    h = (g - b) / c;
  } else if (g === max) {
    h = 2 + ((b - r) / c);
  } else {
    h = 4 + ((r - g) / c);
  }
  h = Math.min(h * 60, 360);

  return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
