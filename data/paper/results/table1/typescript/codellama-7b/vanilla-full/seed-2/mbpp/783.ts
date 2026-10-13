function rgb_to_hsv(r: number, g: number, b: number): number[] {
    let h: number = 0;
    let s: number = 0;
    let v: number = 0;

    // RGB to HSV calculation
    const min = Math.min(r, g, b);
    const max = Math.max(r, g, b);
    const diff = max - min;
    v = max / 255;
    s = diff / max;
    if (s === 0) {
        h = 0;
    } else {
        if (r === max) {
            h = (g - b) / diff;
        } else if (g === max) {
            h = 2 + (b - r) / diff;
        } else {
            h = 4 + (r - g) / diff;
        }
        h = h * 60;
        if (h < 0) {
            h += 360;
        }
    }

    return [h, s, v];
}

const [h, s, v] = rgb_to_hsv(56, 126, 255);
console.log(h, s, v);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
