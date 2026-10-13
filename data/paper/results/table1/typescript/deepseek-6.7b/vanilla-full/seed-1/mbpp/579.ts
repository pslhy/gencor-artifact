function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let res: {[key: number]: number} = {};
    const merged = [...test_tup1, ...test_tup2];
    
    for(const num of merged) {
       if(res[num]) {
           res[num] += 1;
       } else {
           res[num] = 1;
       }
    }

    return Object.keys(res).map(key => parseInt(key)).filter(key => res[key] === 1);
}

// Usage
console.log(find_dissimilar([1, 2, 3, 4], [3, 4, 5, 6])); // returns [1, 2, 5, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
