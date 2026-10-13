function max_product(arr: number[]): number { 
    let size = arr.length; 
    if (size <= 0) {
        return 0; 
    }

    let mp = new Array(size).fill(0); 
    for (let i = 0; i < size; ++i) {
        mp[i] = arr[i]; 
    }

    for (let i = 1; i < size; ++i) {
        for (let j = 0; j < i; ++j) {
            if (arr[i] > arr[j] && mp[i] < mp[j] * arr[i]) {
                mp[i] = mp[j] * arr[i]; 
            }
        } 
    }

    let result = 0; 
    for (let i = 0; i < size; ++i) {
        if (result < mp[i]) {
            result = mp[i]; 
        }
    }

    return result; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
