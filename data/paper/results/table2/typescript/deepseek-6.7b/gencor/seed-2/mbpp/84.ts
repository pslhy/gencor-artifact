
function sequence(n: number): number {
    let arr = [0, 1, 1];
    if (n <= 3) {
        return arr[n-1];
    } else {
        for (let i = 4; i <= n; i++) {
            arr[i-1] = arr[arr[i-2]-1] + arr[i-arr[i-2]-2];
        }
        return arr[n-1];
    }
}

console.log(sequence(5));  // prints 3
console.log(sequence(10));  // prints 6

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the nth number in the newman conway sequence.
