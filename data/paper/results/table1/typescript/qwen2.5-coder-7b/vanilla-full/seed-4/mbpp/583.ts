function catalan_number(num: number): number { 
    // Base case 
    if (num <= 1) { 
        return 1; 
    } 

    // catalan(i) is the sum of catalan(i-1) * catalan(j-1) for j in range 1 to i-1 
    let result: number = 0; 
    for (let i = 1; i < num; i++) { 
        result += catalan_number(i - 1) * catalan_number(num - i); 
    } 

    return result; 
} 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
