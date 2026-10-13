
function find_closest_elements(numbers: number[]): [number, number] { // Function that takes in an array of numbers and returns a tuple of two numbers
    let closestPair: [number, number] = [numbers[0], numbers[1]];
    let smallestDifference = Math.abs(numbers[0] - numbers[1]);

    for (let i = 0; i < numbers.length - 1; i++) { // Iterate over the array
        for (let j = i + 1; j < numbers.length; j++) { // Compare with every other element
            const difference = Math.abs(numbers[i] - numbers[j]);
            if (difference < smallestDifference) { // If a smaller difference is found
                smallestDifference = difference;
                closestPair = numbers[i] < numbers[j] ? [numbers[i], numbers[j]] : 
                    (

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
