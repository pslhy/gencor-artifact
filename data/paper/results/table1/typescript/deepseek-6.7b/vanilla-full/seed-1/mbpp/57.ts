function find_Max_Num(arr: number[]): number {
    // Sort the array in descending order.
    let sortedArr = arr.sort((a, b) => b - a);
    // Join the sorted array elements to form the maximum number.
    let maxNum = parseInt(sortedArr.join(''));
    // Return the maximum number.
    return maxNum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
