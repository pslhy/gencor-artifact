function max_length(list1: number[][]): [number, number[]] {
    let maxLen = 0;
    let maxArr: number[] = [];

    list1.forEach((arr) => {
        if (arr.length > maxLen) {
            maxLen = arr.length;
            maxArr = arr;
        }
    });

    return [maxLen, maxArr];
}

let arr: number[][] = [[1, 2, 3], [4, 5, 6, 7, 8], [9, 10], [11]];
let [maxLen, maxArr] = max_length(arr);
console.log(`Maximum length: ${maxLen}. Array: ${maxArr}`);

// Output:
// Maximum length: 5. Array: 4,5,6,7,8


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the array of maximum length in an array of arrays.
