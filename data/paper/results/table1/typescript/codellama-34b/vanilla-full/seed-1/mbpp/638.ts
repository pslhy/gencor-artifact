function wind_chill(v: number, t: number): number {
    const v2 = v * 0.621371; // convert km/h to mph
    const t2 = (t * 9/5) + 32; // convert C to F
    const wci = 35.74 + (0.6215 * v2) - (35.75 * v2^0.16) + (0.4275 * t2) - (6.17 * t2^0.16);
    return Math.round(wci);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
