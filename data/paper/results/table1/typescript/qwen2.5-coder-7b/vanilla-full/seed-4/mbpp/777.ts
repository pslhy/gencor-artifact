function find_sum(arr: number[]): number { 
    let sum = 0; 
    let count = new Map<number, number>(); 

    for (let i = 0; i < arr.length; i++) { 
        if (count.has(arr[i])) {
            count.set(arr[i], count.get(arr[i])! + 1); 
        } else {
            count.set(arr[i], 1); 
        } 
    } 

    for (let [num, freq] of count) { 
        if (freq === 1) { 
            sum += num; 
        } 
    } 

    return sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
