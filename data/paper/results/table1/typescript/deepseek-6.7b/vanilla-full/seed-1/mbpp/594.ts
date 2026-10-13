function diff_even_odd(list1: number[]): number {
    let even: number = -1;
    let odd: number = -1;

    for (let i = 0; i < list1.length; i++) {
        if (even == -1 && list1[i] % 2 == 0) {
            even = i;
        }
        if (odd == -1 && list1[i] % 2 != 0) {
            odd = i;
        }
        if (even != -1 && odd != -1) {
            break;
        }
    }

    if (even != -1 && odd != -1) {
        return Math.abs(even - odd);
    }
    else if (even != -1) {
        return even;
    }
    else if (odd != -1) {
        return odd;
    }
    else {
        return -1;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
