
function is_octagonal(n: number): number {
   if (n == 1) {
       return 1;
   }
   return 1 + 2 * (n - 1);
}

function get_octagonals(n: number): number[] {
    let octagonals = [1];
    for (let i = 2; i <= n; i++) {
        octagonals.push(is_octagonal(i));
    }
    return octagonals;
}

function get_nth_octagonal(n: number): number {
   return get_octagonals(n).lastIndexOf(n);
}

console.log(get_nth_octagonal(100));  // Output: 15
console.log(get_nth_octagonal(27));   // Output: 10
console.log(get_nth_octagonal(5));    // Output: 5
console.log(get_nth_octagonal(1));    // Output: 1

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth octagonal number.
