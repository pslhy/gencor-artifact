function get_coordinates(test_tup: [number, number]): number[][] {
    const adjacent = [[-1, -1], [-1, 0], [-1, 1], [0, -1],
                      [0, 1], [1, -1], [1, 0], [1, 1]];
    let result: number[][] = [];

    for (let i=0; i<test_tup.length; i++) {
        for (let j=0; j<adjacent.length; j++) {
            result.push([test_tup[i][0] + adjacent[j][0], test_tup[i][1] + adjacent[j][1]]);
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
