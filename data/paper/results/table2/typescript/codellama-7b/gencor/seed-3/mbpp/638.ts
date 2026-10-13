
function wind_chill(v: number, t: number): number {
  if(v >= 48.25 && t <= -17.778) return Math.floor(13.125 * v);
  if(v >= 17.778 && t <= -17.778) return Math.floor(6.25 * v);
  if(t <= 10) return 0;
  return Math.floor(35.74 + 0.6215 * t - 35.75 * v + 0.4275 * v * t);
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
