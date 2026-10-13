function max_sum_list(lists: number[][]): number[] {
    let sum = 0;
    let maxSum = 0;
    let index = 0;
    for (let i = 0; i < lists.length; i++) {
        sum = lists[i].reduce((a, b) => a + b, 0);
        if (sum > maxSum) {
            maxSum = sum;
            index = i;
        }
    }
    return lists[index];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.
