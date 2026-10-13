function rear_extract(test_list: [number, string, number][]): number[] {
    let output = [];
    test_list.forEach((subArr: [number, string, number]) => {
        output.push(subArr[subArr.length - 1]);
    });
    return output;
}

// Example usage:
let arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
console.log(rear_extract(arr));  // Output: [3, 6, 9]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array of arrays and returns an array containing the rear element of each array.
