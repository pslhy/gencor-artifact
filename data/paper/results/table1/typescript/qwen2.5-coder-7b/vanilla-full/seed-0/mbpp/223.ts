function is_majority(arr: number[], n: number, x: number): boolean { 
    let i: number = 0; 
    for (i = 0; i < n; i++) { 
        if (arr[i] == x) {
            break; 
        } 
    } 
    if (i + Math.floor(n / 2) < n && arr[i + Math.floor(n / 2)] == x) { 
        return true; 
    } 
    return false; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in a sorted array, its length (n), and an element and returns whether the element is the majority element in the given sorted array. (The majority element is the element that occurs more than n/2 times.)
