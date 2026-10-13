function max_occurrences(nums: number[]): number { 
    const occurrences = new Map<number, number>();
    nums.forEach((num) => {
        if (occurrences.has(num)) {
            occurrences.set(num, occurrences.get(num)! + 1);
        } else {
            occurrences.set(num, 1);
        }
    });
    let max = 0, item = -1;
    occurrences.forEach((occurrence, num) => {
        if (occurrence > max) {
            max = occurrence;
            item = num;
        }
    });
    return item;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the item with maximum frequency in a given array.
