function get_coordinates(test_tup: [number, number]): number[][] {
    const adjacent_coordinates: number[][] = [];
    for (let i = 0; i < test_tup.length; i++) {
        if (i > 0 && i < test_tup.length - 1) {
            adjacent_coordinates.push([test_tup[i - 1], test_tup[i + 1]]);
        } else if (i == 0 && test_tup.length > 1) {
            adjacent_coordinates.push([0, test_tup[1]]);
        } else if (i == test_tup.length - 1 && test_tup.length > 1) {
            adjacent_coordinates.push([test_tup[test_tup.length - 2], 0]);
        }
    }
    return adjacent_coordinates;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
