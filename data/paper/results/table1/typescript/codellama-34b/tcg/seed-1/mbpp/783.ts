function rgb_to_hsv(r: number, g: number, b: number): number[] {
    r /= 255;
    g /= 255;
    b /= 255;

    const max = Math.max(r, g, b);
    const min = Math.min(r, g, b);

    let hue: number;
    let saturation: number;
    let value = max;

    if (max === min) {
        hue = 0;
        saturation = 0;
    } else if (max === r) {
        hue = 60 * (((g - b) / (max - min)) % 6);
        saturation = (max - min) / max;
    } else if (max === g) {
        hue = 60 * (((b - r) / (max - min)) + 2);
        saturation = (max - min) / max;
    } else if (max === b) {
        hue = 60 * (((r - g) / (max - min)) + 4);
        saturation = (max - min) / max;
    }

    return [hue, saturation * 100, value * 100];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/