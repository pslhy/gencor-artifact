
function wind_chill(v: number, t: number): number { 
    return Math.round(((33 - 0.7 * v) + Math.pow(v, 0.16) * (10.45 - t)) * 0.6215); 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
