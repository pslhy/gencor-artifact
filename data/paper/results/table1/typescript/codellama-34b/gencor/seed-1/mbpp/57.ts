
function find_Max_Num(arr: number[]): number {
    let max_Num = 0;
    let perm_Arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

    for (let i = 0; i < arr.length; i++) {
        for (let j = 0; j < perm_Arr.length; j++) {
            if (arr[i] > perm_Arr[j]) {
                let temp = perm_Arr[j];
                perm_Arr[j] = arr[i];
                arr[i] = temp;
            }
        }
    }

    for (let i = 0; i < arr.length; i++) {
        max_Num = Math.max(max_Num, arr[i]);
    }

    return max_Num;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.
