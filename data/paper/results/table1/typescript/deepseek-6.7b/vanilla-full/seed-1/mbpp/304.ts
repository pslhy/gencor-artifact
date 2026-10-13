function find_Element(arr: number[], ranges: number[][], rotations: number, index: number): number {
    // Adjust the index for the number of rotations
    const adjustedIndex = (index + rotations) % arr.size;

    // Determine if the element is affected by any of the ranges
    for(const range of ranges) {
        // Compute the start and end of the range
        let start = range[0];
        let end = range[1];

        // Adjust the range for the number of rotations
        start = (start + rotations) % arr.size;
        end = (end + rotations) % arr.size;

        // If the adjusted index is within the range, then we have to reverse the order
        if(start <= end) {
            if(adjustedIndex >= start && adjustedIndex <= end) {
                // Compute the index within the range after the rotation
                const rangeIndex = (adjustedIndex - start) % (end - start + 1);

                // Return the element at that index
                return arr[arr.size - rangeIndex - 1];
            }
        } else {
            if(adjustedIndex <= end || adjustedIndex >= start) {
                // Compute the index within the range after the rotation
                const rangeIndex = (adjustedIndex - start) % (end - start + 1);

                // Return the element at that index
                return arr[arr.size - rangeIndex - 1];
            }
        }
    }

    // If no range affects the element, simply return the element at the adjusted index
    return arr[adjustedIndex];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find element at a given index after number of rotations.
