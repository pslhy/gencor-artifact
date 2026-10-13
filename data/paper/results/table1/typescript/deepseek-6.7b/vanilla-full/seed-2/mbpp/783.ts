function rgb_to_hsv(r: number, g: number, b: number): number[] {
    let h = 0;
    let s: number;
    let v: number;

    r /= 255, g /= 255, b /= 255;

    const max = Math.max(r, g, b), min = Math.min(r, g, b);
    const df = max-min;

    if (max == min) {
        h = 0;
    } else if (r == max) {
        h = (g-b)/df % 6;
    } else if (g == max) {
        h = (b-r)/df + 2;
    } else if (b == max) {
        h = (r-g)/df + 4;
    }

    h = Math.round(h * 60);

    if (h < 0) {
        h += 360;
    }

    if (max == 0) {
        s = 0;
    } else {
        s = (df/max)*100;
    }

    v = max*100;

    return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
