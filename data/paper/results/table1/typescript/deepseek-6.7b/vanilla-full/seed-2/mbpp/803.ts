function is_perfect_square(n: number): boolean {
    let start = 0;
    let end = n;

    if (n < 2) {
        return true;
    }

    while (start <= end) {
        let x = Math.floor((start + end) / 2);
        let y = Math.floor(n / x);

        if (x === y) {
            return true;
        } else if (x < y) {
            start = x + 1;
        } else {
            end = x - 1;
        }
    }

    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
