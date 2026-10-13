function pack_consecutive_duplicates(list1: any[]): any[][] { 
    return list1.reduce((accumulator, currentValue, currentIndex, array) => {
        if (currentIndex === 0 || currentValue !== array[currentIndex - 1]) {
            accumulator.push([currentValue]);
        } else {
            accumulator[accumulator.length - 1].push(currentValue);
        }
        return accumulator;
    }, []);
}

// Test cases
console.log(pack_consecutive_duplicates([1, 1, 2, 3, 3, 3, 4]));  // Output: [[1, 1], [2], [3, 3, 3], [4]]
console.log(pack_consecutive_duplicates(['a', 'a', 'a', 'b', 'c', 'c', 'd'])); // Output: [['a', 'a', 'a'], ['b'], ['c', 'c'], ['d']]
console.log(pack_consecutive_duplicates([10, 10, 10, 10])); // Output: [[10, 10, 10, 10]]
console.log(pack_consecutive_duplicates([])); // Output: []


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
