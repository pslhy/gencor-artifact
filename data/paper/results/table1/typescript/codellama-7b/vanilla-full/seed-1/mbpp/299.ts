function max_aggregate(stdata: [string, number][]): [string, number] {
    let maxAggregate = stdata.reduce((prev, curr) => {
        return prev + curr[1];
    }, 0);
    let maxAggregateIndex = stdata.findIndex(item => item[1] === maxAggregate);
    return stdata[maxAggregateIndex];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
