function is_woodall(x: number): boolean {
    if(x <= 0) return false;
    while(x % 2 == 0 ) x /= 2;
    while(x % 3 == 0 ) x /= 3;
    while(x % 5 == 0 ) x /= 5;
    return x === 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
