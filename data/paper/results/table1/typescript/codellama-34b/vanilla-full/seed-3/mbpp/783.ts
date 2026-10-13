function rgb_to_hsv(r: number, g: number, b: number): number[] {
  r /= 255;
  g /= 255;
  b /= 255;

  const c_min = Math.min(r, g, b);
  const c_max = Math.max(r, g, b);
  const delta = c_max - c_min;

  let h = 0;
  if (delta !== 0) {
    if (r === c_max) {
      h = ((g - b) / delta) % 6;
    } else if (g === c_max) {
      h = (b - r) / delta + 2;
    } else {
      h = (r - g) / delta + 4;
    }
    h *= 60;
  }

  const s = c_max === 0 ? 0 : delta / c_max;
  const v = c_max;

  return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
