function max_product(arr: number[]): number {
    let n = arr.length;
    if (n < 3)
        return -1;
  
    arr.sort((a, b) => a - b);
  
    // The 3 largest numbers or the two smallest 
    // negative numbers and the largest number 
    // will give maximum product if there are 
    // no zeros in the array
    return Math.max(arr[0] * arr[1] * arr[n - 1],
                    arr[n - 3] * arr[n - 2] * arr[n - 1]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
