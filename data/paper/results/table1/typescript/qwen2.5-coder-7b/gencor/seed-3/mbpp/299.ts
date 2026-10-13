
function max_aggregate(stdata: [string, number][]): [string, number] {  
    let maxsum = Number.MIN_SAFE_INTEGER;  
    let maxrow: [string, number] = ['', 0];  
    for (let i = 0; i < stdata.length; i++) {  
        let sum = 0;  
        for (let j = 0; j < stdata[i].length; j++) {  
            sum += stdata[i][j

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
