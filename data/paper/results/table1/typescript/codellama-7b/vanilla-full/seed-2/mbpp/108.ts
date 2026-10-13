function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
    let result: number[] = [];
    let a: number[] = [];
    let b: number[] = [];
    const len1 = num1.length;
    const len2 = num2.length;
    const len3 = num3.length;

    // Initialize the result array with the smallest value from each array
    if (len1 > 0 && len2 > 0 && len3 > 0) {
        result.push(Math.min(Math.min(num1[0], num2[0]), num3[0]));
        num1.shift();
        num2.shift();
        num3.shift();
    } else if (len1 > 0 && len2 > 0) {
        result.push(Math.min(num1[0], num2[0]));
        num1.shift();
        num2.shift();
    } else if (len1 > 0 && len3 > 0) {
        result.push(Math.min(num1[0], num3[0]));
        num1.shift();
        num3.shift();
    } else if (len2 > 0 && len3 > 0) {
        result.push(Math.min(num2[0], num3[0]));
        num2.shift();
        num3.shift();
    }

    // Merge the remaining arrays
    while (num1.length > 0 || num2.length > 0 || num3.length > 0) {
        if (num1.length > 0) {
            a = num1;
            num1 = [];
        } else if (num2.length > 0) {
            a = num2;
            num2 = [];
        } else if (num3.length > 0) {
            a = num3;
            num3 = [];
        }
        let min = a[0];
        b = a;
        a = [];
        let i = 1;
        while (i < b.length) {
            const num = b[i];
            if (num < min) {
                min = num;
            } else {
                a.push(num);
            }
            i++;
        }
        result.push(min);
    }

    // Return the merged, sorted array
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
