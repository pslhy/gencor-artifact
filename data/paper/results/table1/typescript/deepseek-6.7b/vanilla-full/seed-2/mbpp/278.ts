function count_first_elements(test_tup: (number | [number, number])[]): number {
    let sum = 0;
    test_tup.forEach((elem, index) => {
        if (typeof elem !== "number") {
            sum += elem[0];
        } else if (index !== 0 && test_tup[index - 1] !== elem) {
            sum++;
        }
    });
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.
