function rgb_to_hsv(r: number, g: number, b: number): number[] {
    r = r / 255;
    g = g / 255;
    b = b / 255;

    const max = Math.max(r, g, b);
    const min = Math.min(r, g, b);
    let h = 0;
    let s = 0;
    let v = max;

    // calculate hue
    if (max !== min) {
        switch (max) {
            case r: h = (g - b) / (max - min) * 60; break;
            case g: h = (b - r) / (max - min) * 60 + 120; break;
            case b: h = (r - g) / (max - min) * 60 + 240; break;
        }
        if (h < 0) {
            h += 360;
        }
    }

    // calculate saturation
    if (max !== 0) {
        s = (max - min) / max;
    }

    // convert to percentage
    h = h / 360;
    s = s * 100;
    v = v * 100;

    return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
