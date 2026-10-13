function differ_At_One_Bit_Pos(a: number, b: number): boolean {
    // XOR of two numbers will contain all bits where bits of two numbers differ (as XOR of same bits gives 0)
    let xor_result = a ^ b;

    // if xor_result is a power of 2 (which means there is exactly one bit set), then return true
    return (xor_result != 0) && ((xor_result & (xor_result - 1)) == 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether the two numbers differ at one bit position only or not.
