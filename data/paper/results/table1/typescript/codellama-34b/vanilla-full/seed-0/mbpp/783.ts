function rgb_to_hsv(r: number, g: number, b: number): number[] {
  const max = Math.max(r, g, b);
  const min = Math.min(r, g, b);
  const delta = max - min;
  const s = max === 0 ? 0 : delta / max;
  let h = 0;
  if (max === min) {
    h = 0;
  } else if (max === r && g >= b) {
    h = (g - b) / delta;
  } else if (max === r && g < b) {
    h = (g - b) / delta + 6;
  } else if (max === g) {
    h = (b - r) / delta + 2;
  } else if (max === b) {
    h = (r - g) / delta + 4;
  }
  return [Math.round(h * 60), s, max];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
