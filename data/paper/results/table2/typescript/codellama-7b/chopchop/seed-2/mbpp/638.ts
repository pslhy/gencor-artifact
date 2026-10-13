
function wind_chill(v: number, t: number): number {
    return Math.round(35.74 + 0.6215 * v - 35.75 * Math.pow(v, 0.16) + 0.4275 * (t - 10) + 4.8675 * Math.pow((t - 10), 0.16) + 1.25 * Math.pow((v - 10), 0.16));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
