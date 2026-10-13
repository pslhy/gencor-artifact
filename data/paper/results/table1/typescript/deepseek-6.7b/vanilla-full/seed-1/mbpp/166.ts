function find_even_pair(A: number[]): number {
    let even_count = 0;  // count the number of even numbers present in the array
    let odd_count = 0;   // count the number of odd numbers in the array

    A.forEach((item) => {
        if (item % 2 == 0) {
            even_count += 1;
        }
        else {
            odd_count += 1;
        }
    })

    // At the end, the number of pairs that have an even xor is the product of the count of even and odd numbers.
    return even_count * odd_count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that counts the number of pairs of integers in an array that xor to an even number.
