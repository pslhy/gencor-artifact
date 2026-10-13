function rgb_to_hsv(r: number, g: number, b: number): number[] { 
    r /= 255; 
    g /= 255; 
    b /= 255; 

    let maxc = Math.max(r, g, b); 
    let minc = Math.min(r, g, b); 
    let delta = maxc - minc; 

    let h: number, s: number, v: number; 

    if (delta == 0) {
        h = 0; 
    } else if (maxc == r) {
        h = ((g - b) / delta) % 6; 
    } else if (maxc == g) {
        h = (b - r) / delta + 2; 
    } else {
        h = (r - g) / delta + 4; 
    } 

    h = Math.round(h * 60); 
    if (h < 0) {
        h += 360; 
    } 

    v = Math.round(maxc * 100); 
    s = Math.round(delta * 100 / maxc); 

    return [h, s, v];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
