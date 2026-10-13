function get_coordinates(test_tup: [number, number]): number[][] {
    const [a, b] = test_tup;
    let values = [0, 0];
    for (let x = -1; x <= 1; x++) {
        for (let y = -1; y <= 1; y++) {
            if (values.length === 2) break;
            let coord = [a + x, b + y];
            if (coord[0] >= 0 && coord[0] < 9 && coord[1] >= 0 && coord[1] < 9 && coord[0] !== coord[1]) {
                values.push(coord);
            }
        }
    }
    return values;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
