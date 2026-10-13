
function re_arrange_array(arr: number[], n: number): number[] { 
    let j = 0; 
    for (let i = 0; i < n; i++) { 
        if (arr[i] < 0) { 
            if (i != j) { 
                const temp = arr[i]; 
                arr[i] = arr[j]; 
                arr[j] = temp; 
            } 
            j++; 
        } 
    } 
    return arr; 
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer n, and re-arranges the first n elements of the given array so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved.
