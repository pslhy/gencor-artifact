function find_First_Missing(array: number[]): number {
    const sorted = Arrays.sort(array);
    let smallest = -1;
    if (sorted.length === 0) {
        return smallest;
    } else if (sorted.length === 1) {
        return smallest + 1;
    } else {
        for (let i = 0; i < sorted.length - 1; i++) {
            if (sorted[i] + 1 !== sorted[i + 1]) {
                return sorted[i] + 1;
            }
        }
    }
    return smallest;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
