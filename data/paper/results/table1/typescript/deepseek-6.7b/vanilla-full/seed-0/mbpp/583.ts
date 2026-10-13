function catalan_number(num: number): number {
    if(num <= 1) return 1;
    let catalan: number[] = [0, 1];
    for(let i = 2; i <= num; i++)
    {
        catalan[i] = 0;
        for(let j = 0; j < i; j++)
            catalan[i] = catalan[i] + catalan[j] * catalan[i-j-1];
    }
    return catalan[num];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which returns nth catalan number.
