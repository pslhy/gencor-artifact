function get_coordinates(test_tup: [number, number]): number[][] {
    const adjacent_coordinates = [];

    const x = test_tup[0];
    const y = test_tup[1];

    adjacent_coordinates.push([x-1, y]);
    adjacent_coordinates.push([x+1, y]);
    adjacent_coordinates.push([x, y-1]);
    adjacent_coordinates.push([x, y+1]);

    return adjacent_coordinates;
}

// Test case 1:
const test_tup: [number, number] = [2, 3];
const expected_result = [[1, 3], [3, 3], [2, 2], [2, 4]];
const result = get_coordinates(test_tup);

// Test case 2:
const test_tup2: [number, number] = [1, 2];
const expected_result2 = [[0, 2], [2, 2], [1, 1], [1, 3]];
const result2 = get_coordinates(test_tup2);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.