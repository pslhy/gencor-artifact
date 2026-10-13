function rgb_to_hsv(r: number, g: number, b: number): number[] { 
    r /= 255, g /= 255, b /= 255; 
    let max = Math.max(r, g, b), min = Math.min(r, g, b); 
    let h, s, v = max; 

    let d = max - min; 
    s = (max === 0) ? 0 : (d / max); 

    if (max === min) { 
        h = 0; // achromatic 
    } else { 
        switch (max) { 
            case r: h = (g - b) / d + (g < b ? 6 : 0); break; 
            case g: h = (b - r) / d + 2; break; 
            case b: h = (r - g) / d + 4; break; 
        } 
        h /= 6; 
    } 

    return [h, s, v]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/
