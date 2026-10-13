function wind_chill(v: number, t: number): number {
   if (v == 0 || t >= 20) return 0;
   var wc = 13.12v + 0.6215t - 11.37v^0.16t + 0.3965v^0.16t + 10^0.16;
   return Math.ceil(wc);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the wind chill index rounded to the next integer given the wind velocity in km/h and a temperature in celsius.
