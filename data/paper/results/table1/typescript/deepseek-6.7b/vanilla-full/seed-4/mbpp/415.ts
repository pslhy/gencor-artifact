function max_Product(arr: number[]): [number, number] {
    let max1 = 0;
    let max2 = 0;
    let len = arr.length;

    if (len < 2) {
        throw 'Invalid input. Array should at least contain two numbers';
    }

    if (len === 2) {
        return [arr[0], arr[1]];
    }

    for (let i = 0; i < len; i++) {
        if (max1 < arr[i]) {
            max1 = arr[i];
        }
    }

    for (let j = 0; j < len; j++) {
        if (max2 < arr[j] && arr[j] < max1) {
            max2 = arr[j];
        }
    }

    return [max1, max2];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
