function max_aggregate(stdata: [string, number][]): [string, number] {
    let highestAggregate = 0;
    for (const innerArr of stdata) {
        if (innerArr.reduce((acc, curr) => acc + curr) > highestAggregate) {
            highestAggregate = innerArr.reduce((acc, curr) => acc + curr);
        }
    }
    return [highestAggregate];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
