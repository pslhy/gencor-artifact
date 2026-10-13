function reverse_Array_Upto_K(input: number[], k: number): number[] {
    const reversed: number[] = [];
    const left: number[] = [];
    const right: number[] = [];
    for (let i = 0; i < input.length; i++) {
        if (i < k) {
            left.push(input[i]);
        } else {
            right.push(input[i]);
        }
    }
    left.reverse();
    right.reverse();
    for (let i = 0; i < left.length; i++) {
        reversed.push(left[i]);
    }
    for (let i = 0; i < right.length; i++) {
        reversed.push(right[i]);
    }
    return reversed;
}

const input = [1, 2, 3, 4, 5];
const k = 3;
const result = reverse_Array_Upto_K(input, k);
console.log(result);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to reverse an array upto a given position.
