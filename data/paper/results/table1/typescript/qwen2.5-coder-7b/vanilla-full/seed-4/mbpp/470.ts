function add_pairwise(test_tup: [number, number, number, number, number]): [number, number, number, number] { 
    // Using array map to iterate and add each element with the next one
    let res: [number, number, number, number] = test_tup.map((num, index) => {
        // Ensuring the current index is not the last element
        if (index < test_tup.length - 1) {
            return num + test_tup[index + 1];
        } else {
            // For the last element, return it unchanged as it has no next element
            return num;
        }
    });
    // Returning the array of pairwise sums
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.
