function max_aggregate(stdata: [string, number][]): [string, number] {    
    let maxAgg: [string, number] = ['', 0];
    stdata.forEach(([item, count]) => {
        if (count > maxAgg[1]) {
            maxAgg = [item, count];
        } else if (count === maxAgg[1] && item < maxAgg[0]) {
            maxAgg = [item, count];
        }
    });
    return maxAgg;    
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.