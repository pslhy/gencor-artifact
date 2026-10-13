
function merge(lst: any[][]): any[][] { // Function that takes an array of arrays as parameter
    let firstElements: any[] = []; // Initialize an array to store first elements
    let secondElements: any[] = []; // Initialize an array to store second elements

    // Use forEach to iterate over each subarray in the provided array
    lst.forEach(subarray => {
        firstElements.push(subarray[0]); // Push the first element of each subarray to firstElements array
        secondElements.push(subarray[1]); // Push the second element of each subarray to secondElements array
    });

    return [firstElements, secondElements]; // Return an array containing both firstElements and secondElements
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array of arrays, where each subarray has two elements, and returns an array of two arrays where the first array has the first element of each subarray and the second one has the second.
