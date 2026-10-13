
function max_aggregate(stdata: [string, number][]): [string, number] {    
    let maxVal = -Infinity;
    let maxAggregate: [string, number] = ["", 0];
    for (let data of stdata) {
        let aggregate = data.reduce((acc: number, current: [string, number]) => acc + current[1] * (current[0] === data[0] ? 1 : 0.5 * (100 - 100 * (

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
