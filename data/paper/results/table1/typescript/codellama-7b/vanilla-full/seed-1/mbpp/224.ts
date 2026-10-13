function count_Set_Bits(n: number): number {
    let count = 0;
    while (n > 0) {
        if (n & 1) count++;
        n >>>= 1;
    }
    return count;
}

console.log(count_Set_Bits(4));   // Output: 1
console.log(count_Set_Bits(7));   // Output: 3
console.log(count_Set_Bits(10));  // Output: 2
console.log(count_Set_Bits(20));  // Output: 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the number of set bits (binary digits with value 1) in a given number.
