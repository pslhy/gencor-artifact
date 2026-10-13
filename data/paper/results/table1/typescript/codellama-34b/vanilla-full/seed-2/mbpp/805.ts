function max_sum_list(lists: number[][]): number[] {
    let result = lists[0];
    let max_sum = result.reduce((a, b) => a + b);

    for (let i = 1; i < lists.length; i++) {
        let sum = lists[i].reduce((a, b) => a + b);
        if (sum > max_sum) {
            max_sum = sum;
            result = lists[i];
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that returns the array in an array of arrays whose sum of elements is the highest.
