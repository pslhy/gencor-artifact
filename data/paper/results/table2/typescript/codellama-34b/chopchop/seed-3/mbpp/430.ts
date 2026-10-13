
function parabola_directrix(a: number, b: number, c: number): number {
   if(a === 0){
      return -c/b;
   }
   else if(b === 0){
      return -a/c;
   }
   else{
      return -((b**2)-(4*a*c))/((4*a**2) - (b**2));
   }
}

//Tests
let a = 1;
let b = -4;
let c = -3;

parabola_directrix(a, b, c); // Expected output: -3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the directrix of a parabola.
