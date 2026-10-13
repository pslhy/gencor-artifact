function reverse_Array_Upto_K(input: number[], k: number): number[] {
    let left = 0;
    let right = k - 1;

    while (left < right) {
        let temp = input[left];
        input[left] = input[right];
        input[right] = temp;

        left++;
        right--;
    }

    return input;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
