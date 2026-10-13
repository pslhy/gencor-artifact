function find_Index(n: number): number {
    let sum = 0;
    let index = 0;
    let digitCount = 0;
    let i = 1;

    while (digitCount < n) {
        sum += i;
        digitCount = sum.toString().length;

        if (digitCount === n) {
            index = i;
        }

        i++;
    }

    return index;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
