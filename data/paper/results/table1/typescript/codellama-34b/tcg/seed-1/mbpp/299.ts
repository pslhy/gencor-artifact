function max_aggregate(stdata: [string, number][]): [string, number] {
    let max_agg = 0;
    let result: [string, number] = ["", 0];

    for (let i = 0; i < stdata.length; i++) {
        for (let j = 0; j < stdata[i][1].toString().length; j++) {
            if (parseInt(stdata[i][1].toString()[j]) > max_agg) {
                max_agg = parseInt(stdata[i][1].toString()[j]);
                result = [stdata[i][0], max_agg];
            }
        }
    }
    return result;
};

// Example usage
let stdata = [["apple", 10], ["banana", 20], ["cherry", 30], ["dog", 40], ["egg", 50]];
let result = max_aggregate(stdata[1][1].toString()[1]>max_aggregate(stdata[2][1].toString()[1]>max_aggregate(stdata[3][1].toString()[1]>max_aggregate(stdata[4][1].toString()[1]>0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to calculate the maximum aggregate from the array of arrays.