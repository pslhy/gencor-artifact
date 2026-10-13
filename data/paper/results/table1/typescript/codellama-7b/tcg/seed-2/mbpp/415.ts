function max_Product(arr: number[]): [number, number] {
    let highestProduct = 0;
    let firstNumber: number | null = null;
    let secondNumber: number | null = null;

    arr.forEach((element) => {
        if (highestProduct < element) {
            highestProduct = element;
        }
    });

    arr.forEach((element) => {
        if (element !== highestProduct && firstNumber === null) {
            firstNumber = element;
        } else if (element !== highestProduct && element > highestProduct && firstNumber !== null) {
            secondNumber = element;
        }
    });

    return [firstNumber, secondNumber] as [number, number];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.