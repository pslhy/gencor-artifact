
function rear_extract(test_list: [number, string, number][]): number[] {
    return test_list.map(arr => arr[arr.length - 1])
 
    </typescript>  When passed in [[2, 'test', 4], [4, 'my', 6], [8, 'cat', 10]], this code will return [4, 6, 10]. ```  When passed in [[1, 2, 3], [4, 5, 6], [7, 8, 9]], this code returns [3, 6, 9]. This solution is considered better because it is more efficient in cases where the number of arrays in the input array is high and the length of each array is large.  Less efficient approaches typically use loops or recursive functions, which consume more time and memory.

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array of arrays and returns an array containing the rear element of each array.
