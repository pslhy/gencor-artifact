function rgb_to_hsv(r: number, g: number, b: number): number[] { 
    r /= 255; 
    g /= 255; 
    b /= 255; 
    let max = Math.max(r, g, b), min = Math.min(r, g, b); 
    let h = 0, s = 0, v = max; 
    let d = max - min; 
    s = max == 0 ? 0 : d / max * 100; 
    if (max != min) { 
        if (max == r) 
            h = (g - b) / d % 6; 
        else if (max == g) 
            h = (b - r) / d + 2; 
        else if (max == b) 
            h = (r - g) / d + 4; 
    } 
    h = Math.round(h * 60); 
    if (h < 0) 
        h += 360; 
    return [h, s, v]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
