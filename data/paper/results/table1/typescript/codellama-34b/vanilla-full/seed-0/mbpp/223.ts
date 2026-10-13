function is_majority(arr: number[], n: number, x: number): boolean {
    const mid = n // 2;
    if (arr[mid] == x) {
        let count = 1;
        for (let i = 1; i < mid; i++) {
            if (arr[mid - i] == x) {
                count++;
            }
        }
        for (let i = mid + 1; i < n; i++) {
            if (arr[i] == x) {
                count++;
            }
        }
        return count > mid;
    }
    return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in a sorted array, its length (n), and an element and returns whether the element is the majority element in the given sorted array. (The majority element is the element that occurs more than n/2 times.)
