
function wind_chill(v: number, t: number): number {
  if(v < 4.8 || t > 10) {
    return 0; // wind chill index is only valid for wind over 4.8 km/h and temperature below 10 degrees Celsius
  }
  const index = 13.12 + 0.6215 * t - 11.37 * Math.pow(v, 0.16) + 0.3965 * t * Math.pow(v, 0.16);
  return Math.round(index);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
