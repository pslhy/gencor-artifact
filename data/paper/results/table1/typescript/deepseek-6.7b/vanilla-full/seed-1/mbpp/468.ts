function max_product(arr: number[]): number {
    let n: number = arr.length;
    let maxi: number[] = new Array(n).fill(0);
    let mini: number[] = new Array(n).fill(0);
    maxi[0] = mini[0] = arr[0];

    for(let i: number = 1; i < n; i++) {
        if (arr[i] > 0) {
            maxi[i] = Math.max(arr[i], maxi[i-1] * arr[i]);
            mini[i] = Math.min(arr[i], mini[i-1] * arr[i]);
        } else {
            maxi[i] = Math.max(arr[i], mini[i-1] * arr[i]);
            mini[i] = Math.min(arr[i], maxi[i-1] * arr[i]);
        }
    }
    return Math.max(...maxi);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
