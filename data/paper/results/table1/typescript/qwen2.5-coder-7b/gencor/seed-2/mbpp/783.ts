
function rgb_to_hsv(r: number, g: number, b: number): number[] { 
    r /= 255;
    g /= 255;
    b /= 255;

    let max = Math.max(r, g, b);
    let min = Math.min(r, g, b);
    let delta = max - min;
    let h: number = 0;
    let s: number = 0;
    let v: number = max;

    if (delta === 0) {
        h = 0;
    } else if (max === r) {
        h = ((g - b) / delta) % 6;
    } else if (max === g) {
        h = (b - r) / delta + 2;
    } else if (max === b) {
        h = (r - g) / delta + 4;
    }

    h = Math.round(h * 60);
    if (h < 0) { 
        h += 360;
    }

    s = (max === 0 ? 0 : delta / max);
    s = Math.round(s * 100);

    v = Math.round(v * 100);

    return [h, s, v];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
