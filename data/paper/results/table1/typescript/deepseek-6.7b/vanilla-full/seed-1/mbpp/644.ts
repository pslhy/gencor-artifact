function reverse_Array_Upto_K(input: number[], k: number): number[] {
    let start = 0;
    let end = k-1;
    while(start<end) {
        let temp = input[start];
        input[start] = input[end];
        input[end] = temp;
        start += 1;
        end -= 1;
    }
    return input;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
