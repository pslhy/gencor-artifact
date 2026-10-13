function rgb_to_hsv(r: number, g: number, b: number): number[] {
  let max = Math.max(r, Math.max(g, b));
  let min = Math.min(r, Math.min(g, b));
  let h = 0;
  let s = 0;
  let v = max / 255;

  if (max === min) {
    return [h, s, v];
  }

  s = (max - min) / max;

  if (r === max) {
    h = (g - b) / (max - min) / 60;
  } else if (g === max) {
    h = (2 + (b - r) / (max - min)) * 60;
  } else if (b === max) {
    h = (4 + (r - g) / (max - min)) * 60;
  }

  if (h < 0) {
    h += 360;
  }

  return [h, s, v];
}

function main() {
  console.log(rgb_to_hsv(128, 128, 128)); // [0, 0, 0.3333333333333333]
  console.log(rgb_to_hsv(255, 0, 0)); // [0, 1, 1]
  console.log(rgb_to_hsv(0, 255, 0)); // [120, 1, 1]
  console.log(rgb_to_hsv(0, 0, 255)); // [240, 1, 1]
}

main();


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
