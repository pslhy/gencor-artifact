
function is_octagonal(n: number): number {
   if (n == 1) {
       return 1;
   }
   return 1 + 2 * (n - 1);
}

function get_octagonals(n: number): number {
   let octagonals = 0;
   for (let i = 1; i <= n; i++) {
       octagonals += is_octagonal(i);
   }
   return octagonals;
}

const n = 8;
const nth_octagonal = get_octagonals(n);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
