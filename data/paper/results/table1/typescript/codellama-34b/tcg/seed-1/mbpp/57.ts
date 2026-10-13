function find_Max_Num(arr: number[]): number {
    let max_Num = 0;
    let perm_Arr = [];

    function permutation(arrLen: number): void {
        if (arrLen === 1) {
            perm_Arr.push(arr.slice());
        } else {
            for (let i = 0; i < arrLen; i++) {
                permutation(arrLen - 1);
                let k = arrLen % 2 === 0 ? 0 : i;
                [arr[k], arr[arrLen]] = [arr[arrLen], arr[k]];
            }
        }
    }

    permutation(arr.length);

    perm_Arr.push(arr.slice());
    perm_Arr = [...new Set(perm_Arr.ma


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the largest number that can be formed with the given array of digits.