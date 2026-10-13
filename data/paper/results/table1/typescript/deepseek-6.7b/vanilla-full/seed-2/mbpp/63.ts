function max_difference(test_list: [number, number][]): number {
    let arr = test_list.flat();
    let max_diff = -1;

    for(let i = 0; i < arr.length; i++) {
        for(let j = i + 1; j < arr.length; j++) {
            let diff = Math.abs(arr[i] - arr[j])
            if(diff > max_diff) {
                max_diff = diff;
            }
        }
    }
    return max_diff;
}

console.log(max_difference([[2, 3, 10], [8, 5, 7], [12, 9, 15]]));   // Output: 9


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.
