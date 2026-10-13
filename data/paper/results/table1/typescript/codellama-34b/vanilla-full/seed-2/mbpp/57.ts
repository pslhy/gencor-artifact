function find_Max_Num(arr: number[]): number {
    let largest_num = -1;
    for (let i = 0; i < arr.length; i++) {
        for (let j = i + 1; j < arr.length; j++) {
            const num = arr[i] * 10 + arr[j];
            largest_num = Math.max(largest_num, num);
        }
    }
    return largest_num;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
