
function max_Product(arr: number[]): [number, number] {
    if(arr.length < 2) {
        throw new Error("For finding a pair, the array size needs to be at least two");
    }
    let max = arr[0];
    let secondMax = arr[1];

    for(let i = 2; i < arr.length; i++) {
        if(arr[i] > max) {
            secondMax = max;
            max = arr[i];
        }else if(arr[i] > secondMax) {
            secondMax = arr[i];
        }
    }

    if(max === 0 && secondMax === 0) {
        throw new Error("Both numbers are zero");
    }
  
    return [max, secondMax];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
