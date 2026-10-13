function is_woodall(x: number): boolean {  
    if (x <= 0) return false;
    
    let k: number = 0;
    let powerOfTwo: number = 1;
    
    while (powerOfTwo * 2 - 1 <= x) {
        powerOfTwo *= 2;
        k++;
    }
    
    return x === powerOfTwo * k - 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given number is woodball or not.
