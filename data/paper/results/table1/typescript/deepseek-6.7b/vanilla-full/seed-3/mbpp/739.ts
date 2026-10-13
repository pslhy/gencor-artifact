function find_Index(n: number): number {
    let i = 1;
    while (true) {
        let x = (i * (i + 1)) / 2;
        if (x >= Math.pow(10, n - 1) && x < Math.pow(10, n)) {
            return i;
        }
        i++;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
