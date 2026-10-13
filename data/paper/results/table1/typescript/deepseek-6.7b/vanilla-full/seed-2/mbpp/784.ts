function mul_even_odd(list1: number[]): number {
    let sumEven = 0;
    let productOdd = 1;
    for (let i=0; i<list1.length; i++){
        if (list1[i] % 2 == 0){
            sumEven += list1[i];
        } else {
            productOdd *= list1[i];
        }
    }
    return sumEven * productOdd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
