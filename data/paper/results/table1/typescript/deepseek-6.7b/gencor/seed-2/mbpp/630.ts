
function get_coordinates(test_tup: [number, number]): number[][] {
    let adjacent_coords: number[][] = [];
    for (let i = 0; i < test_tup.length; i++) {
        for (let j = i + 1; j < test_tup.length; j++) {
            adjacent_coords.push([test_tup[i], test_tup[j]]);
        }
    }
    return adjacent_coords;
}

let coordinates: [number, number] = [5, 3, 6, 9, 12, 5, 8, 3, 9, 2, 4, 0, 12, -3, 5, -2, 1, -3, 4, -5, -6, -2, -4, -2, 1, 2, 4, 6, 4, 8, 10, 12, 3, 7, 4, 1, 9, 10, 3, 7, 5, 4, 5, 1, 5, 7, 4, 2, 4, 7, 6, 2, 8, 9, 6, 10, 8, 12, 8, 10, 6, 12, 5, 9, 8, 7, 3, 10, 11, 7, 4, 6, 5, 2, 6, 1, 7, 4, 2, 5, 8, 9, 5, 10, 7, 11, 8, 6, 10, 9, 12, 12, 10, 8, 11, 6, 12, 7, 9, 4, 11, 8, 2, 5, 8, 6, 10, 12, 4, 8, 10, 6, 4, 8, 6, 5, 10, 12, 10, 8, 6, 12, 10, 8, 6, 12, 2, 6, 10, 8, 4, 8, 6, 10, 4, 6, 8, 10, 12, 6, 8, 10, 6, 12, 4, 8, 6, 10, 12, 8, 6, 10, 4, 8, 12, 6, 8, 10, 4, 6, 8, 10, 6, 8, 4, 12, 8, 6, 10, 8, 6, 4, 10, 12, 8, 6, 4, 10, 6, 8, 10, 4, 6, 12, 8, 6, 10, 4, 12, 8, 6, 10, 4, 6, 8, 10, 6, 12, 8, 4, 10, 6, 8, 4, 6, 8, 10, 6, 8, 12, 4, 10, 6, 8, 10, 6, 4, 8, 10, 6, 8, 12, 4, 6, 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
