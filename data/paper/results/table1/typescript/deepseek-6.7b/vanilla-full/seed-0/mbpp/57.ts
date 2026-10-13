function find_Max_Num(arr: number[]): number {
    const num = arr.sort((a, b) => b - a).join('');
    return parseInt(num);
}

console.log(find_Max_Num([3, 30, 34, 5, 9]));  // 9, 5, 34, 3, 30


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
