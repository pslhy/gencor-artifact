function mul_even_odd(list1: number[]): number {
    let first_even_found: boolean = false;
    let first_odd_found: boolean = false;
    let product: number = 1;
    
    for (let i = 0; i < list1.length; i++) {
        if (list1[i] % 2 === 0 && !first_even_found) {
            product *= list1[i];
            first_even_found = true;
        } 
        else if (list1[i] % 2 !== 0 && !first_odd_found) {
            product *= list1[i];
            first_odd_found = true;
        }
        if (first_even_found && first_odd_found) {
            break;
        }
    }
    return product;
}



// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
