function odd_length_sum(arr: number[]): number {
    let n = arr.length;
    let sum = 0;
    for(let i = 0; i < n; i++) {
        let start = i + 1;
        let end = n - i;
        let total = start * end;
        let odd = Math.floor(total/2);
        if(total % 2 == 1) {
            sum += odd;
        }
        sum += arr[i] * odd;
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
