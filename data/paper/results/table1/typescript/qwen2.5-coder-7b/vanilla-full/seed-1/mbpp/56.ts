function checks(n: number): boolean { 
    let reverse = 0; 
    let temp = n; 
    while (temp > 0) { 
        reverse = reverse * 10 + temp % 10; 
        temp = Math.floor(temp / 10); 
    } 
    return n === 2 * reverse - 1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.
