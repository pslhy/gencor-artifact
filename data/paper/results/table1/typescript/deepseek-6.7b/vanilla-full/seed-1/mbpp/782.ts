function odd_length_sum(arr: number[]): number {
    let res: number = 0; 
    let n: number = arr.length;
  
    for (let i: number = 0; i < n; i++) {
        let start: number = i + 1;
        let end: number = n - i;
        let total: number = start * end;
        let total_odd: number = Math.floor(total / 2);

        if(total % 2 == 1) {
            total_odd++;
        }

        res += total_odd * arr[i];
    }

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of all odd length subarrays. https://www.geeksforgeeks.org/sum-of-all-odd-length-subarrays/
