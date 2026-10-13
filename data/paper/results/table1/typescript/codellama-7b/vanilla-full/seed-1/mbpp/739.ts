function find_Index(n: number): number {
    let minIndex = 1;
    let maxIndex = 10 ** n - 1;

    while (minIndex < maxIndex) {
        let mid = Math.floor((minIndex + maxIndex) / 2);
        let value = Math.pow((mid * (mid + 1)) / 2, 10);

        if (value < 10 ** n) {
            minIndex = mid + 1;
        } else {
            maxIndex = mid;
        }
    }

    return minIndex;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
