function find_closest_elements(numbers: number[]): [number, number] {
    let sortedNumbers = [...numbers].sort((a, b) => a - b);
    let minDifference = Infinity;
    let closestPair: [number, number] = [0, 0];
  
    for(let i = 0; i < sortedNumbers.length - 1; i++) {
        let difference = sortedNumbers[i+1] - sortedNumbers[i];
        if(difference < minDifference) {
            minDifference = difference;
            closestPair = [sortedNumbers[i], sortedNumbers[i+1]];
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
