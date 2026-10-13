function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let result: [number, number, number, number] = []
    for (let i = 0; i < test_tup1.length; i++){
       if(test_tup1[i] != test_tup2[i]){
             result.push(test_tup1[i])
           }
    return result;
}
/*
sample input
test = [[1,2,3,4],[2,3,4,5]]
output 
[1,4] which is the dissimilar elements
*/

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
