function max_Product(arr: number[]): [number, number] {
    let arrLen = arr.length;
    if (arrLen < 2) {
        throw new Error("Array should have at least two numbers");
    }
    if (arrLen === 2) {
        return arr;
    }
    let firstMax = Number.NEGATIVE_INFINITY;
    let secondMax = Number.NEGATIVE_INFINITY;
    let firstMin = Number.POSITIVE_INFINITY;
    let secondMin = Number.POSITIVE_INFINITY;
    for (let i=0; i<arrLen; i++) {
        if (arr[i] > firstMax) {
            secondMax = firstMax;
            firstMax = arr[i];
        } else if (arr[i] > secondMax) {
            secondMax = arr[i];
        }
        if (arr[i] < firstMin) {
            secondMin = firstMin;
            firstMin = arr[i];
        } else if (arr[i] < secondMin) {
            secondMin = arr[i];
        }
    }
    if (firstMax * secondMax > firstMin * secondMin) {
        return [firstMax, secondMax];
    } else {
        return [firstMin, secondMin];
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
