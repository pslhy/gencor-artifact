
function wind_chill(v: number, t: number): number {
    // No wind chill index is calculated for wind velocities below 4.8 km/h
    if (v < 4.8) {
        return Math.ceil(t);
    }
    const wind_chill_index = 13.12 + 0.6215 * t - 11.37 * v ** 0.16 + 0.3965 * t * v ** 0.16;
    return Math.ceil(wind_chill_index);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
