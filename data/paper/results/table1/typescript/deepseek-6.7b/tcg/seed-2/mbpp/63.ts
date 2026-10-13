function max_difference(test_list: [number, number][]): number {
    let arr = test_list.reduce((acc: number[], curr) => [...acc, ...curr.toString().split(',').map(n => parseInt(n.trim()))], [])

    let min = Infinity;
    let max = -Infinity;

    for(let i = 0; i < arr.length; i++){
        if(arr[i] < min) {
           min = arr[i];
        }
        if(arr[i] > max) {
           max = arr[i];
        }
    }
    return max-min;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum difference between available pairs in the given array array.