function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
    const sorted_list: number[] = [];

    let i = 0;
    let j = 0;
    let k = 0;

    while (i < num1.length && j < num2.length && k < num3.length) {
        let min_value: number;

        if (num1[i] <= num2[j] && num1[i] <= num3[k]) {
            min_value = num1[i];
            i++;
        } else if (num2[j] <= num1[i] && num2[j] <= num3[k]) {
            min_value = num2[j];
            j++;
        } else if (num3[k] <= num1[i] && num3[k] <= num2[j]) {
            min_value = num3[k];
            k++;
        }

        sorted_list.push(min_value);
    }

    while (i < num1.length && j < num2.length) {
        let min_value: number;

        if (num1[i] <= num2[j]) {
            min_value = num1[i];
            i++;
        } else {
            min_value = num2[j];
            j++;
        }

        sorted_list.push(min_value);
    }

    while (j < num2.length && k < num3.length) {
        let min_value: number;

        if (num2[j] <= num3[k]) {
            min_value = num2[j];
            j++;
        } else {
            min_value = num3[k];
            k++;
        }

        sorted_list.push(min_value);
    }

    while (i < num1.length && k < num3.length) {
        let min_value: number;

        if (num1[i] <= num3[k]) {
            min_value = num1[i];
            i++;
        } else {
            min_value = num3[k];
            k++;
        }

        sorted_list.push(min_value);
    }

    while (i < num1.length) {
        sorted_list.push(num1[i]);
        i++;
    }

    while (j < num2.length) {
        sorted_list.push(num2[j]);
        j++;
    }

    while (k < num3.length) {
        sorted_list.push(num3[k]);
        k++;
    }

    return sorted_list;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
