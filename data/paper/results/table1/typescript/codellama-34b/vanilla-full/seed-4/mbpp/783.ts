function rgb_to_hsv(r: number, g: number, b: number): number[] {
   // Calculate the maximum and minimum values
   let min = Math.min(r, g, b);
   let max = Math.max(r, g, b);

   // Calculate the hue value
   let hue = 0;
   if (max == r && g >= b) {
      hue = (g - b) / (max - min);
   } else if (max == r && g < b) {
      hue = (g - b) / (max - min) + 6;
   } else if (max == g) {
      hue = (b - r) / (max - min) + 2;
   } else if (max == b) {
      hue = (r - g) / (max - min) + 4;
   }

   // Calculate the saturation value
   let saturation = (max - min) / max;

   // Calculate the value value
   let value = max;

   // Return the hsv values
   return [hue, saturation, value];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
