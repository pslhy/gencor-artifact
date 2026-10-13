function get_coordinates(test_tup: [number, number]): number[][] {
    let output: number[][] = [];
    for (let i = 0; i < test_tup.length; i++) {
        for (let j = 0; j < test_tup.length; j++) {
            if (i !== j && test_tup[i] === test_tup[j]) {
                output.push([i, j]);
            }
        }
    }
    return output;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
