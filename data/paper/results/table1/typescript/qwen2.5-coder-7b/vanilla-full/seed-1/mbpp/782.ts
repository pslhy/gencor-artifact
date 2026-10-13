function odd_length_sum(arr: number[]): number { 
    let total_sum = 0; 
    let n = arr.length; 
  
    // Loop for all subarrays  
    for (let i = 0; i < n; i++) { 
        let contribution = Math.ceil((i + 1) * (n - i) / 2); 
        if (contribution % 2 != 0) 
            total_sum += arr[i]; 
        else
            total_sum -= arr[i]; 
    } 
  
    return total_sum; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
