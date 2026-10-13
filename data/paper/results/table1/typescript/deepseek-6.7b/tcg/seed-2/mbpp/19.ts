function test_duplicate(arraynums: number[]): boolean {
    let arr = new Set(arraynums);
    if (arr.size === arraynums.length) {
        return false;
    } else {
        return true;
    }
}

// Brief explanation: 
// The function 'test_duplicate' takes an array 'arraynums' as input and checks whether it contains any duplicate elements or not.
// In TypeScript, 'Set' is used to store unique elements only, assuming the existence of duplicate elements in the array. If the sizes of the 'Set' and the given array are equal then it indicates that there are no duplicate elements. 
// If the size is different, it implies there must be duplicate elements in the array.
// The function then returns 'true' if duplicate elements are found and 'false' if none are found.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find whether a given array of integers contains any duplicate element.