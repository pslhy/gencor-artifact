function freq_count(list1: number[]): {[key: number]: number} {
    let result: {[key: number]: number} = {};
    for (const element of list1) {
        result[element] = (result[element] || 0) + 1;
    }
    return result;
}

// Test case 1:
console.log(freq_count([])); // Output: {}

// Test case 2:
console.log(freq_count([1, 2, 3, 2, 1])); // Output: {1: 2, 2: 2, 3: 1}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
