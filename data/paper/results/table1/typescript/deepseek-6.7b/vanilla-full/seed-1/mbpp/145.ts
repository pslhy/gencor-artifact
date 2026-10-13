function max_Abs_Diff(arr: number[]): number {
    let min_val = arr[0];
    let max_diff = arr[1] - arr[0];
    
    for(let i=1; i< arr.length; i++) {
        if (arr[i] - min_val > max_diff) {
            max_diff = arr[i] - min_val;
        }
        
        if (arr[i] < min_val) {
            min_val = arr[i];
        }
    }
    
    return max_diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the maximum difference between any two elements in a given array.
