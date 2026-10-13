function get_coordinates(test_tup: [number, number]): number[][] {
    let adjacent_coords: number[][] = [];
    for (let i = 0; i < test_tup[0]; i++) {
        for (let j = 0; j < test_tup[1]; j++) {
            if ((i > 0) || (j > 0)) {
                if ((i < test_tup[0]-1) || (j < test_tup[1]-1)) {
                    adjacent_coords.push([i, j]);
                }
            }
        }
    }
    return adjacent_coords;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.