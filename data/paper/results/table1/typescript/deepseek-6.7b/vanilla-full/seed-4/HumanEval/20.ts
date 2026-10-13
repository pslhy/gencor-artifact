function find_closest_elements(numbers: number[]): [number, number] {
    numbers.sort((a, b) => a - b);
    let minDifference = Infinity;
    let closestElements: [number, number] = [0, 0];

    for (let i = 0; i < numbers.length - 1; i++) {
        const difference = numbers[i + 1] - numbers[i];
        if (difference < minDifference) {
            minDifference = difference;
            closestElements = [numbers[i], numbers[i + 1]];
        }
    }

    return closestElements;
}

console.log(find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])); // [2.0, 2.2]
console.log(find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])); // [2.0, 2.0]


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
