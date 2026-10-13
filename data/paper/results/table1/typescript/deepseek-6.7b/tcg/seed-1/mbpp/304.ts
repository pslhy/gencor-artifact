function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
    // Adjust the index for the number of rotations
    const adjustedIndex = (index + rotations) % arr.length;

    // Determine if the element is affected by any of the ranges
    for (const range of ranges) {
        // Compute the start and end of the range
        let start = range[0];
        let end = range[1];

        // Adjust the range for the number of rotations
        start = (start + rotations) % arr.length;
        end = (end + rotations) % arr.length;

        // If the adjusted index is within the range, then we have to reverse the range
        if (start <= adjustedIndex && adjustedIndex <= end) {
            // Compute the number of elements we have to reverse
            let n = end - start + 1;

            // Compute the actual number of elements we have to reverse
            n = n % arr.length;

            // Reverse the range
            for (let i = 0; i < n / 2; i++) {
                let temp = arr[start + i];
                arr[start + i] = arr[end - i];
                arr[end - i] = temp;
            }

            // Adjust the adjusted index so it refers to the element in the new position
            adjustedIndex == start + (adjustedIndex - start + n) % n;
        }
    }

    // Return the element at the adjusted index
    return arr[adjustedIndex];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.