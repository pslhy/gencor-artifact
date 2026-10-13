function bell_Number(n: number): number { 
    let bell: number[] = new Array(n + 1).fill(0); 
    bell[0] = 1; 

    for (let i = 1; i <= n; i++) { 
        let b = bell[i - 1]; 
        for (let j = i - 1; j > 0; j--) { 
            bell[j] = bell[j] + bell[j - 1]; 
        } 
        bell[0] = b; 
    } 
    return bell[0]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
