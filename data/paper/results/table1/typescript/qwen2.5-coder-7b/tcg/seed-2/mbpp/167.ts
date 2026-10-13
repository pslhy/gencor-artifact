function next_power_of_2(n: number): number { 
    let count = 0; 
    if (n && !(n & (n - 1))) 
        return n;
    while (n != 0) { 
        n >>= 1; 
        count++; 
    } 
    return 1 << count; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest power of 2 greater than or equal to n.