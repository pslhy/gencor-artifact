function find_Max_Num(arr: number[]): number {
    let strArr = arr.map(num => num.toString());
    strArr.sort((a, b) => b + a > a + b ? -1 : 1);
    let maxNumStr = strArr.join('');
    return parseInt(maxNumStr);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
