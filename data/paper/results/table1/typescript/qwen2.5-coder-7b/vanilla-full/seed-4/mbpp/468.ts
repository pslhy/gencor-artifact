function max_product(arr: number[]): number { 
    let n = arr.length; 
    let prod = Array(n).fill(0); 

    // Initialize the product array with the elements of the input array
    for (let i = 0; i < n; i++) { 
        prod[i] = arr[i]; 
    } 

    // Compute the maximum product subsequence
    for (let i = 1; i < n; i++) { 
        for (let j = 0; j < i; j++) { 
            if (arr[i] > arr[j] && prod[i] < prod[j] * arr[i]) { 
                prod[i] = prod[j] * arr[i]; 
            } 
        } 
    } 

    // Find the maximum product in the product array
    let result = prod[0]; 
    for (let i = 1; i < n; i++) { 
        if (result < prod[i]) { 
            result = prod[i]; 
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
