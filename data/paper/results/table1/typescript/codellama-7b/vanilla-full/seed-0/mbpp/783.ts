function rgb_to_hsv(r: number, g: number, b: number): number[] {
  const min = Math.min(r, g, b);
  const max = Math.max(r, g, b);
  const delta = max - min;

  const h: number = (max === r)
    ? (g - b) / delta % 6
    : (max === g)
      ? 2 + (b - r) / delta
      : 4 + (r - g) / delta;

  const s: number = (max === 0)
    ? 0
    : (1 - min / max);

  const v = max;

  return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
