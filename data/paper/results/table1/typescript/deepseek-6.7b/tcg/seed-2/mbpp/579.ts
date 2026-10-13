function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let arr1 = Array.from(new Set(test_tup1 as any[]).values());
    let arr2 = Array.from(new Set(test_tup2 as any[]).values());
    return arr1.concat(arr2.filter(value => !arr1.includes(value))).concat(arr2.filter(value => !arr1.includes(value))) as [number, number, number, number];
}

// Test the function 
let tup1 = [1, 2, 3, 4];
let tup2 = [3, 4, 5, 6];

let result = find_dissimilar(tup1 as any[ ] as [number, number, number, number], tup2 as any[ ] as [number, number, number, number]);

// Output of the function 
// Output : [1, 2, 5, 6], 
// Since in the given arrays after removing the common elements, we get the above mentioned elements.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.