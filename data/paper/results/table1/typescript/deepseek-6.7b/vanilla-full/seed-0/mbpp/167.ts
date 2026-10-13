function next_power_of_2(n: number): number {
    if (n <= 0) return 1;
    n -= 1;
    n |= n >> 16; // right shift 16 bits, then bitwise OR
    n |= n >> 8;  // right shift 8 bits, then bitwise OR
    n |= n >> 4;  // right shift 4 bits, then bitwise OR
    n |= n >> 2;  // right shift 2 bits, then bitwise OR
    n |= n >> 1;  // right shift 1 bit, then bitwise OR
    return n + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.
