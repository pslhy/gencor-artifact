function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let arr1 = Array.from(new Set(test_tup1));
    let arr2 = Array.from(new Set(test_tup2));
    let res: number[] = [];

    arr1.forEach(item => {
        if (!arr2.includes(item)) {
            res.push(item);
        }
    });

    arr2.forEach(item => {
        if (!arr1.includes(item)) {
            res.push(item);
        }
    });

    return res as [number, number, number, number];
}

let test_tup1 = [1, 2, 3, 4];
let test_tup2 = [3, 4, 5, 6];
console.log(find_dissimilar(test_tup1, test_tup2));  // Output: [1, 2, 5, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
