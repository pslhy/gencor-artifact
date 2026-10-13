function get_Inv_Count(arr: number[]): number {
    let inversion_count: number = 0;
    let n = arr.length;

    for(let i = 0; i < n; i++) {
        for(let j = i+1; j < n; j++) {
            if(arr[i] > arr[j]) {
                inversion_count++;
            }
        }
    }
    return inversion_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count inversions in an array.
