function get_coordinates(test_tup: [number, number]): number[][] {
    let adjacent_coords: number[][] = [];
    for (let i = 0; i < test_tup.length; i++) {
        for (let j = i + 1; j < test_tup.length; j++) {
            adjacent_coords.push([test_tup[i], test_tup[j]]);
        }
    }
    return adjacent_coords;
}

let coordinates: [number, number] = [5, 3, 6, 9, 12, 5, 8];
let adjacent_coordinates = get_coordinates(coordinates);
console.log(adjacent_coordinates);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
