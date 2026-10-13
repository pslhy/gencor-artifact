
function wind_chill(v: number, t: number): number {
  const windChill = 35.74 + 0.6215 * v - 35.75 * Math.pow(v, 0.16) + 0.4275 * t + 0.0417 * v * t + 0.00288 * v * v * t;
  return Math.round(windChill);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
