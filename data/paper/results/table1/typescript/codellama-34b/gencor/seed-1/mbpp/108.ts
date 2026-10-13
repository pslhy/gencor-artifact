
function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
    let result: number[] = [];

    let i = 0;
    let j = 0;
    let k = 0;

    while (i < num1.length && j < num2.length && k < num3.length) {
        if (num1[i] < num2[j] && num1[i] < num3[k]) {
            result.push(num1[i]);
            i++;
        } else if (num2[j] < num1[i] && num2[j] < num3[k]) {
            result.push(num2[j]);
            j++;
        } else {
            result.push(num3[k]);
            k++;
        }
    }

    while (i < num1.length) {
        result.push(num1[i]);
        i++;
    }

    while (j < num2.length) {
        result.push(num2[j]);
        j++;
    }

    while (k < num3.length) {
        result.push(num3[k]);
        k++;
    }

    return result;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
