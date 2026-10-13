function check_smaller(test_tup1: [number, number, number], test_tup2: [number, number, number]): boolean {
    let result: boolean = true;
    
    for (let i = 0; i < test_tup1.length; i++) {
        if (test_tup1[i] <= test_tup2[i]) {
            result = false;
            break;
        }
    }
    
    return result;
}

console.log(check_smaller([1, 2, 3], [0, 1, 2]));  // Outputs: true
console.log(check_smaller([1, 2, 3], [1, 2, 1]));  // Outputs: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if each element of second array is smaller than its corresponding element in the first array.
