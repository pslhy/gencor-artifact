
function max_Product(arr: number[]): [number, number] {
    let highestProduct = 0;
    let firstNumber: number | null;
    let secondNumber: number | null;
    for (let i = 0; i < arr.length; i++) {
        for (let j = i; j < arr.length; j++) {
            if (arr[i] * arr[j] > highestProduct) {
                highestProduct = arr[i] * arr[j];
                firstNumber = arr[i];
                secondNumber = arr[j];
            }
        }
    }
    return [firstNumber!, secondNumber!];
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
