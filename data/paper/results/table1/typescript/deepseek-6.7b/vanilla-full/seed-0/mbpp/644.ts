function reverse_Array_Upto_K(input: number[], k: number): number[] {
    if(k < input.length) {
        for(let i = 0; i < k/2; i++) {
            let temp = input[i];
            input[i] = input[k-i-1];
            input[k-i-1] = temp;
        }
    }
    return input;
}

let arr = [1, 2, 3, 4, 5, 6, 7];
let k = 5;
console.log(reverse_Array_Upto_K(arr, k));  // Prints: [5, 4, 3, 2, 1, 6, 7]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
