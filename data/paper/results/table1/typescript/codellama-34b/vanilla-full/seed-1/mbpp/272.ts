function rear_extract(test_list: [number, string, number][]): number[] {
    let result: number[] = [];

    test_list.forEach(element => {
        result.push(element[element.length - 1]);
    });

    return result;
}

let test_array = [
    [1, "a", 3],
    [4, "b", 5],
    [6, "c", 7],
    [8, "d", 9]
];

let result = rear_extract(test_array);

console.log(result); // [3, 5, 7, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array of arrays and returns an array containing the rear element of each array.
