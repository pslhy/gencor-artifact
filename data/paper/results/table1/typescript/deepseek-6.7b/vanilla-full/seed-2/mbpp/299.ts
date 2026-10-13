function max_aggregate(stdata: [string, number][]): [string, number] {
    let sum = 0;
    let max: [string, number] = ["", 0];
  
    for (let i = 0; i < stdata.length; i++) {
        sum = stdata[i][1];
        if (sum > 0 && sum > max[1]) {
            max = stdata[i];
        }
    }
  
    return max;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.
