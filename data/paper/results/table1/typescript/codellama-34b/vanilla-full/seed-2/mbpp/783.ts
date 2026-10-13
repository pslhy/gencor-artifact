function rgb_to_hsv(r: number, g: number, b: number): number[] {
    let h = 0;
    let s = 0;
    let v = Math.max(r, g, b);
    let mv = Math.min(r, g, b);
    let mx = Math.max(r, g, b);
    let delta = mx - mv;
    if (r === v) {
        h = (g - b) / delta;
    } else if (g === v) {
        h = 2 + (b - r) / delta;
    } else if (b === v) {
        h = 4 + (r - g) / delta;
    }
    s = v === 0 ? 0 : delta / v;
    return [Math.round(h * 60), Math.round(s * 100), Math.round(v * 100)];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
