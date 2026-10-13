
function find_closest_elements(numbers: number[]): [number, number] { 
    if (numbers.length < 2) {
        throw new Error("Array must contain at least two elements");
    }
    numbers.sort((a, b) => a - b);
    let closestPair: [number, number] = [numbers[0], numbers[1]];
    let smallestDiff = Math.abs(numbers[1] - numbers[0]);
    for (let i = 2; i < numbers.length; i++) {
        const currentDiff = Math.abs(numbers[i] - numbers[i - 1]);
        if (currentDiff < smallestDiff) {
            smallestDiff = currentDiff;
            closestPair = [numbers[i - 1], numbers[i]];
        }
    }
    return closestPair;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     From a supplied array of numbers (of length at least two) select and return two that are the closest to each
//     other and return them in order (smaller number, larger number).
//     >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
//     [2.0, 2.2]
//     >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
//     [2.0, 2.0]
