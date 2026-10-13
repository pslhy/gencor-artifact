
function rgb_to_hsv(r: number, g: number, b: number): number[] {
    r /= 255;
    g /= 255;
    b /= 255;

    let max = Math.max(r, g, b);
    let min = Math.min(r, g, b);
    let diff = max - min;

    let h = 0;
    let s = 0;
    let v = max;

    if (max !== 0) {
        s = diff / max;
    } else {
        s = 0;
        h = 0;
        return [h, s * 100, v * 100];
    }

    if (r === max) {
        h = (g - b) / diff;
    } else if (g === max) {
        h = 2 + (b - r) / diff;
    } else {
        h = 4 + (r - g) / diff;
    }

    h *= 60;

    if (h < 0) {
        h += 360;
    }

    s *= 100;
    v *= 100;

    return [Math.round(h), Math.round(s), Math.round(v)];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
