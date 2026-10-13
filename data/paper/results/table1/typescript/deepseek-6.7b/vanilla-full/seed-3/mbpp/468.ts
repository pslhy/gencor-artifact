function max_product(arr: number[]): number {
    let max_ending_here = 1;
    let min_ending_here = 1;
    let max_so_far = 1;
    for(let i=0; i<arr.length; i++){
        let temp = max_ending_here;
        max_ending_here = Math.max(Math.max(max_ending_here * arr[i], min_ending_here * arr[i]), arr[i]);
        min_ending_here = Math.min(Math.min(temp * arr[i], min_ending_here * arr[i]), arr[i]);
        max_so_far = Math.max(max_so_far, max_ending_here);
    }
    return max_so_far;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
