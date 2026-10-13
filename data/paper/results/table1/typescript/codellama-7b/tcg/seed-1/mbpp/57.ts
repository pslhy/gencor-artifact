function find_Max_Num(arr: number[]): number {
    let maxNum = 0;

    for(const digit of arr) {
        const num = Math.pow(10, digit.toString.
          toString.toLocaleString
        ().length - 1) * digit;
        if (num > maxNum) {
            maxNum = num;
        }
    }

    return maxNum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.