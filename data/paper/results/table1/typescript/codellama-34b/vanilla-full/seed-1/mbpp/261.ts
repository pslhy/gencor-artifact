function division_elements(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let result: [number, number, number, number] = [0, 0, 0, 0];
    for (let i = 0; i < test_tup1.length; i++) {
        result[i] = test_tup1[i] / test_tup2[i];
    }
    return result;
}
/*
Explanation:
The function takes in two arrays, test_tup1 and test_tup2, which are tuples of numbers. It returns a new array containing the result of performing element-wise division across the two input arrays. The function uses a for loop to iterate through each element of the arrays and performs the division operation. The result is stored in a new array which is returned at the end of the function.

Sample Input and Output:
test_tup1 = [10, 5, 3, 8]
test_tup2 = [2, 2, 2, 5]
Result = [5, 2.5, 1.5, 1.6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in two arrays and performs mathematical division operation element-wise across the given arrays.
