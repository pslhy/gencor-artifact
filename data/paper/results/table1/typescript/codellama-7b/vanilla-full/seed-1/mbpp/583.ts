function catalan_number(num: number): number {
    let result: number = 0;
    if(num < 0 || num > 100)
        return 0;
    else if(num < 2)
        return 1;
    
    for(let i = 0; i < num - 1; i++) {
        result += catalan_number(i) * catalan_number(num - 1 - i);
    }
    
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
