
function next_power_of_2(n: number): number {
    if (n <= 0) return 1;

    let power = 1;

    while (power < n) {
        power *= 2;
    }

    return power;
}

console.log(next_power_of_2(10)); // Should print 16
console.log(next_power_of_2(30)); // Should print 32
console.log(next_power_of_2(123456789)); // Should print 134217728

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
