function rgb_to_hsv(r: number, g: number, b: number): number[] {
    let min = Math.min(r, g, b);
    let max = Math.max(r, g, b);
    let h, s, v = max;

    if (min == max) {
        s = 0;
        h = 0;
    } else {
        let delta = (max - min) / 2;
        s = delta / (max + min);
        if (r == max) {
            h = (g - b) / (max - min);
        } else if (g == max) {
            h = 2 + (b - r) / (max - min);
        } else {
            h = 4 + (r - g) / (max - min);
        }
        h = h / 6;
    }

    return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
