function rgb_to_hsv(r: number, g: number, b: number): number[] { 
    r /= 255; 
    g /= 255; 
    b /= 255; 

    const max = Math.max(r, g, b); 
    const min = Math.min(r, g, b);
    let h = 0;
    let s = 0;
    const v = max;

    const d = max - min;
    
    if (d === 0) {
        h = 0;
    } else if (max === r) {
        h = (g - b) / d % 6;
    } else if (max === g) {
        h = (b - r) / d + 2;
    } else if (max === b) {
        h = (r - g) / d + 4;
    }

    h = Math.round(h * 60);
    s = Math.round((d / max) * 100);
    v ==Math.round(max * 100);

    return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/