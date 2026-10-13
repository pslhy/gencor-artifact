function rgb_to_hsv(r: number, g: number, b: number): number[] {
    r = r / 255;
    g = g / 255;
    b = b / 255;

    let max = Math.max(r, g, b);
    let min = Math.min(r, g, b);
    let ch = max - min;

    let h = 0;

    if (ch != 0) {
        if (max == r) {
            h = (g - b) / ch % 6;
        }
        if (max == g) {
            h = (b - r) / ch + 2;
        }
        if (max == b) {
            h = (r - g) / ch + 4;
        }

        h *= 60;

        if (h < 0) {
            h += 360;
        }
    }

    let s = (max == 0) ? 0 : ch / max;

    let v = max;

    return [h, s * 100, v * 100];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/