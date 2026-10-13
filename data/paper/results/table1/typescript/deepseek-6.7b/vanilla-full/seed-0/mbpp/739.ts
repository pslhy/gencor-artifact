function find_Index(n: number): number {
    let num = Math.pow(10, n - 1);
    let prev = 0;
    let next = 0;
    let index = 1;
    while (true) {
        prev = next;
        next = (index * (index + 1)) / 2;
        if (next >= num) {
            break;
        }
        index++;
    }
    return index;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
