function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] { 
    let dissimilar: [number, number, number, number] = [-1, -1, -1, -1]; 
    test_tup1.forEach((num, index) => { 
        if (num !== test_tup2[index]) { 
            dissimilar[index] = num; 
        } 
    });
    return dissimilar; 
} 
console.log(find_dissimilar([4, 7, 9, 6], [4, 9, 9, 6])); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
