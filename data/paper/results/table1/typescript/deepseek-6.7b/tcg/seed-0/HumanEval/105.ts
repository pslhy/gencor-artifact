function by_length(arr: number[]): string[] {
    const nums = new Map<number, string>([
        [1, "One"],
        [2, "Two"],
        [3, "Three"],
        [4, "Four"],
        [5, "Five"],
        [6, "Six"],
        [7, "Seven"],
        [8, "Eight"],
        [9, "Nine"]
    ]);

    return arr
        .filter(n => nums.has(n) && n >= 1 && n <= 9)
        .sort((a, b) => a - b)
        .reverse()
        .map(n => nums.get(n)!);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of integers, sort the integers that are between 1 and 9 inclusive,
//     reverse the resulting array, and then replace each digit by its corresponding name from
//     "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
//     For example:
//     >>> by_length([2, 1, 1, 4, 5, 8, 2, 3])
//     ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
//     If the array is empty, return an empty array:
//     >>> by_length([])
//     []
//     If the array has any strange number ignore it:
//     >>> by_length([1, -1, 55])
//     ["One"]