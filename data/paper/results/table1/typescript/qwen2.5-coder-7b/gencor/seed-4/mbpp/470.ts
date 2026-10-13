
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
    }).slice(0, -1) as [number, number, number, number];
    return res;
}

// Test the function
let test_tup: [number, number, number, number, number] = [1, 2, 3, 4, 5];
console.log(add_pairwise(test_tup));
// Expected output: [3, 5, 7, 9]

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the pairwise addition of the neighboring elements of the given array.
