
function rgb_to_hsv(r: number, g: number, b: number): number[] {
    r = r / 255;
    g = g / 255;
    b = b / 255;

    let max = Math.max(r, g, b);
    let min = Math.min(r, g, b);
    let d = max - min;

    let h: number;
    let s: number;
    let v = max;

    if (max === 0) {
        s = 0;
        h = 0;
    } else {
        s = (max / v);
        if (max !== min) {
            h = (d / 6) / (max - min);
        } else {
            h = 0;
        }
    }

    let h_degree = 60 * h;
    if (h_degree < 0) h_degree += 360;

    s = s * 100;
    v = v * 100;

    return [h_degree, s, v];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
