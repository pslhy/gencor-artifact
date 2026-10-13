function max_aggregate(stdata: [string, number][]): [string, number] {
    let maxAggregate = 0;
    let maxAggregateEntry: [string, number] | null = null;
    for (let i = 0; i < stdata.length; i++) {
        if (maxAggregate < stdata[i][1]) {
            maxAggregate = stdata[i][1];
            maxAggregateEntry = stdata[i];
        }
    }
    return maxAggregateEntry ? maxAggregateEntry : ["", 0];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
