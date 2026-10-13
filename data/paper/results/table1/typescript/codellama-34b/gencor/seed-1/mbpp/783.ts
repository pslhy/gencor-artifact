
function rgb_to_hsv(r: number, g: number, b: number): number[] {
    r /= 255;
    g /= 255;
    b /= 255;

    const max = Math.max(r, g, b);
    const min = Math.min(r, g, b);

    let h: number;
    let s: number;

    if (max === min) {
        h = 0;
    } else if (max === r && g >= b) {
        h = (60 * (g - b) / (max - min)) + 0;
    } else if (max === r && g < b) {
        h = (60 * (g - b) / (max - min)) + 360;
    } else if (max === g) {
        h = (60 * (b - r) / (max - min)) + 120;
    } else if (max === b) {
        h = (60 * (r - g) / (max - min)) + 240;
    }

    if (max === 0) {
        s = 0;
    } else {
        s = (max - min) / max;
    }

    return [ h, s, max ];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
