function get_coordinates(test_tup: [number, number]): number[][] {
    let coordinates: number[][] = [[0, 1], [1, 0], [-1, 0], [0, -1]];
    let result: number[][] = [];

    for (let coord of coordinates) {
        let new_coord: [number, number] = [test_tup[0] + coord[0], test_tup[1] + coord[1]];
        result.push(new_coord);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
