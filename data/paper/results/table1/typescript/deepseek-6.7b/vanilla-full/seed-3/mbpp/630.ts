function get_coordinates(test_tup: [number, number]): number[][] {
    let result: number[][] = [];
    const x: number = test_tup[0];
    const y: number = test_tup[1];
    const directions = [[-1,0], [1,0], [0,-1], [0,1]];

    for (let i=0; i<4; i++) {
        const x1 = x + directions[i][0];
        const y1 = y + directions[i][1];
        if (x1>=0 && y1>=0) {
            result.push([x1, y1]);
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
