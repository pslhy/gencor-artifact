
function highest_Power_of_2(n: number): number { 
{ 
    let res = 0; 
    for (let i = n; i >= 1; i--) 
    { 
        if ((i % 2) === 0) 
        { 
            res = i; 
            return res; 
        } 
    } 
    return res; 
}
function check(): boolean 
{ 
    let n = 18; 
    return highest_Power_of_2(n) === 16; 
} 
if (check()) 
    return true; 
else
    return false;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the highest power of 2 that is less than or equal to n.
